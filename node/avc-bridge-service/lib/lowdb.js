/**
 * Purpose: Local JSON database for storing user / websocket sessions
 * Author:  Daniel Hochleitner
 */
const appConfig = require(appRootFolder + '/conf/config.json');
const logger = require(appRootFolder + '/lib/logger.js').getLogger('lowdb');
const utils = require(appRootFolder + '/lib/utils.js');
const low = require('lowdb');
const FileSync = require('lowdb/adapters/FileSync');

const adapter = new FileSync(appRootFolder + '/db/db.json');
const db = low(adapter);

// default db
db.defaults({
  userSessions: [{
    username: '0',
    userAccessToken: '0',
    apexSessionId: '0',
    createDate: utils.getFutureDate() // future date so cleanup job doesn´t remove it
  }],
  socketSessions: [{
    username: '0',
    socketSessionId: '0',
    createDate: utils.getFutureDate() // future date so cleanup job doesn´t remove it
  }],
  apiRequests: [{
    requestIP: '0',
    requestDate: utils.getFutureDate() // future date so cleanup job doesn´t remove it
  }]
}).write();


module.exports = {
  /**
   * Add a user session to DB (e.g after authentication)
   * @param {string} pUsername
   * @param {string} pUserAccessToken
   * @param {string} pApexSessionId
   */
  addUserSession: function(pUsername, pUserAccessToken, pApexSessionId) {
    try {
      var newUserSession = {
        username: pUsername.toLowerCase(),
        userAccessToken: pUserAccessToken,
        apexSessionId: pApexSessionId,
        createDate: Date.now()
      };
      logger.debug('addUserSession: newUserSession', newUserSession);

      db.get('userSessions')
        .push(newUserSession)
        .write();
    } catch (err) {
      logger.error('addUserSession: err', err);
    }
  },
  /**
   * Add a websocket session to DB
   * @param {string} pUsername
   * @param {string} pSocketSessionId
   */
  addSocketSession: function(pUsername, pSocketSessionId) {
    try {
      var newSocketSession = {
        username: pUsername.toLowerCase(),
        socketSessionId: pSocketSessionId,
        createDate: Date.now()
      };
      logger.debug('addSocketSession: newSocketSession', newSocketSession);

      db.get('socketSessions')
        .push(newSocketSession)
        .write();
    } catch (err) {
      logger.error('addSocketSession: err', err);
    }
  },
  /**
   * Add an API request to DB
   * @param {string} pIP
   */
  addApiRequest: function(pIP) {
    try {
      var newApiRequest = {
        requestIP: pIP,
        requestDate: Date.now()
      };
      logger.debug('addApiRequest: newApiRequest', newApiRequest);

      db.get('apiRequests')
        .push(newApiRequest)
        .write();
    } catch (err) {
      logger.error('addApiRequest: err', err);
    }
  },
  /**
   * Remove user session for specific username
   * @param {string} pUsername
   */
  removeUserSession: function(pUsername) {
    try {
      db.get('userSessions')
        .remove(function(o) {
          return o.username == pUsername.toLowerCase();
        })
        .write();
    } catch (err) {
      logger.error('removeUserSession: err', err);
    }
  },
  /**
   * Remove user sessions older than 1 day (runs every 2 hours)
   */
  removeOldUserSessions: function() {
    setInterval(function() {
      try {
        var now = new Date();
        db.get('userSessions')
          .remove(function(o) {
            var pastDate = now.setDate(now.getDate() - 1);
            return o.createDate < pastDate;
          })
          .write();
        logger.info('removeOldUserSessions: old user sessions deleted');
      } catch (err) {
        logger.error('removeOldUserSessions: err', err);
      }
    }, 7200000);
  },
  /**
   * Remove websocket sessions older than 4 hours (runs every 1 hour)
   */
  removeOldSocketSessions: function() {
    setInterval(function() {
      try {
        var now = new Date();
        db.get('socketSessions')
          .remove(function(o) {
            var pastDate = now.setHours(now.getHours() - 4);
            return o.createDate < pastDate;
          })
          .write();
        logger.info('removeOldSocketSessions: old websocket sessions deleted');
      } catch (err) {
        logger.error('removeOldSocketSessions: err', err);
      }
    }, 3600000);
  },
  /**
   * Get username from given user access token
   * @param {string} pUserAccessToken
   * @return {string} username
   */
  getUserFromToken: function(pUserAccessToken) {
    try {
      var userSession = db.get('userSessions')
        .filter(function(o) {
          return o.userAccessToken == pUserAccessToken;
        })
        .value();
      var username = userSession[0].username;
      return username;
    } catch (err) {
      logger.error('getUserFromToken: err', err);
      return;
    }
  },
  /**
   * Check if a user session already exists in the local db
   * @param {string} pUsername
   * @param {string} pUserAccessToken
   * @param {string} pApexSessionId
   * @return {bool}
   */
  userSessionExists: function(pUsername, pUserAccessToken, pApexSessionId) {
    try {
      var userSession = db.get('userSessions')
        .filter(function(o) {
          return o.username == pUsername.toLowerCase() && o.userAccessToken == pUserAccessToken && o.apexSessionId == pApexSessionId;
        })
        .value();
      return userSession.length > 0;
    } catch (err) {
      logger.error('userSessionExists: err', err);
      return false;
    }
  },
  /**
   * Get socket sessions for given username
   * @param {string} pUsername
   * @return {array} socketSessions
   */
  getSessionsForUser: function(pUsername) {
    try {
      var socketSessions = db.get('socketSessions')
        .filter(function(o) {
          return o.username == pUsername.toLowerCase();
        })
        .value();
      return socketSessions;
    } catch (err) {
      logger.error('getSessionsForUser: err', err);
      return;
    }
  },
  /**
   * Check if API requests exceed max allowed Connections per Interval
   * @param {string} pIP
   * @return {boolean}
   */
  apiRequestsExceeded: function(pIP) {
    try {
      var now = new Date();
      var limitDate = now.setMilliseconds(now.getMilliseconds() - appConfig.server.rateLimitInterval);

      var apiRequests = db.get('apiRequests')
        .filter(function(o) {
          return o.requestIP == pIP && o.requestDate > limitDate;
        })
        .value();

      if (apiRequests.length > appConfig.server.rateLimitConnections) {
        return true;
      } else {
        return false;
      }
    } catch (err) {
      logger.error('apiRequestsExceeded: err', err);
      return false;
    }
  }
};
