/**
 * Purpose: Websocket / socket.io related functions
 * Author:  Daniel Hochleitner
 */
const appConfig = require(appRootFolder + '/conf/config.json');
const logger = require(appRootFolder + '/lib/logger.js').getLogger('websocket');
const oracledb = require(appRootFolder + '/lib/oracledb.js');
const lowdb = require(appRootFolder + '/lib/lowdb.js');
const io = require('socket.io');


module.exports = function(server) {
  /**
   * Variables
   */
  var listener = io.listen(server);
  var ioAVC = listener.of('/avc');

  var ws = {
    /**
     * Add a user session to DB (e.g after authentication)
     * @param {string} pServerKey
     */
    checkServerKey: function(pServerKey) {
      if (pServerKey == appConfig.websocket.serverKey) {
        return true;
      } else {
        return false;
      }
    },
    /**
     * Check user token, if not present try to validate token using oracle db
     * @param {string} pUsername
     * @param {string} pUserAccessToken
     * @param {string} pApexSessionId
     * @param {function} callback
     */
    checkUserAccessToken: function(pUsername, pUserAccessToken, pApexSessionId, callback) {
      if (lowdb.userSessionExists(pUsername, pUserAccessToken, pApexSessionId)) {
        logger.debug('checkUserAccessToken: valid user session already exists, using it');
        callback({
          "success": true
        });
      } else {
        oracledb.validateToken(pUsername, pUserAccessToken, function(execResult) {
          logger.debug('checkUserAccessToken: execResult', execResult);
          if (execResult.success) {
            if (execResult.outBinds && execResult.outBinds.ret == 'Y') {
              logger.debug('checkUserAccessToken: UserAccess authentication successful');
              // save in local lowdb
              lowdb.addUserSession(pUsername, pUserAccessToken, pApexSessionId);
              callback({
                "success": true
              });
            } else {
              logger.debug('checkUserAccessToken: UserAccess authentication not successful');
              callback({
                "success": false
              });
            }
          } else {
            logger.debug('checkUserAccessToken: Database error', execResult.error);
            callback({
              "success": false
            });
          }
        });
      }
    },
    /**
     * Connect websocket with authentication
     */
    connectSocket: function() {
      // Private connect
      ioAVC.on('connection', function(socket) {
        var username = socket.handshake.query.username;
        var userAccessToken = socket.handshake.query.userAccessToken;
        var apexSessionId = socket.handshake.query.apexSessionId;
        var serverKey = socket.handshake.query.serverKey;
        // check serverKey
        if (ws.checkServerKey(serverKey)) {
          logger.debug('connectSocket: serverKey valid');
          // check user token authentication
          ws.checkUserAccessToken(username, userAccessToken, apexSessionId, function(result) {
            // successful authenticated
            if (result.success) {
              logger.debug('connectSocket: successful authenticated');
              socket.username = username;
              // save session to local lowdb
              lowdb.addSocketSession(username, socket.id);
              // not authenticated
            } else {
              logger.debug('connectSocket: could not authenticate - disconnect');
              // disconnect
              socket.disconnect();
            }
          });
        } else {
          // serverKey error
          logger.debug('connectSocket: serverKey not valid - disconnect');
          // disconnect
          socket.disconnect();
        }
      });
    },
    /**
     * Send message to all socket sessions from specific user
     * @param {string} pUsername
     * @param {object} pData
     */
    sendMessage: function(pUsername, pData) {
      var data = pData || {};
      var socketSessions = lowdb.getSessionsForUser(pUsername);

      logger.debug('sendMessage: socketSessions', socketSessions);
      logger.debug('sendMessage: data', data);

      for (var i = 0; i < socketSessions.length; i++) {
        var socketSessionId = socketSessions[i].socketSessionId;
        logger.debug('sendMessage: socketSessionId', socketSessionId);

        ioAVC.to(socketSessionId).emit('message', data);
      }
    }
  };
  // return ws object with functions
  return ws;
};
