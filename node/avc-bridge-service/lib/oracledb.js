/**
 * Purpose: Oracle Database related functions
 * Author:  Daniel Hochleitner
 */
const appConfig = require(appRootFolder + '/conf/config.json');
const logger = require(appRootFolder + '/lib/logger.js').getLogger('oracle');
const oracledb = require('oracledb');

module.exports = {
  /**
   * Get connection with Oracle DB
   * @param {function} connectionCallback
   */
  getConnection: function(connectionCallback) {
    // get db connection
    oracledb.getConnection({
        user: appConfig.database.user,
        password: appConfig.database.password,
        connectString: appConfig.database.connectString
      },
      function(err, connection) {
        // error callback
        if (err) {
          logger.error('getConnection: err.message', err.message);
          connectionCallback({
            "success": false,
            "error": err
          });
          return;
        }
        // success / connection callback
        connectionCallback({
          "success": true,
          "connection": connection
        });
      });
  },
  /**
   * Release connection from Oracle DB
   * @param {object} pConnection
   */
  releaseConnection: function(pConnection, pCommit) {
    var commit = pCommit !== false;
    // close with commit
    if (commit) {
      pConnection.commit(
        function(err) {
          if (err) {
            logger.error('releaseConnection: commit err.message', err.message);
            return;
          }
          pConnection.close(
            function(err) {
              if (err) {
                logger.error('releaseConnection: close err.message', err.message);
              }
              return;
            });
        });
      // close without commit
    } else {
      pConnection.close(
        function(err) {
          if (err) {
            logger.error('releaseConnection: close err.message', err.message);
          }
          return;
        });
    }
  },
  /**
   * Authenticate user against DB authentication procedure
   * @param {string} pUsername
   * @param {string} pPassword
   * @param {function} callback
   */
  authenticateUser: function(pUsername, pPassword, callback) {
    module.exports.getConnection(function(connectionCallback) {
      if (connectionCallback.success) {
        var connection = connectionCallback.connection;
        var bindvars = {
          i1: pUsername,
          i2: pPassword,
          i3: appConfig.database.apexAppId,
          o1: {
            type: oracledb.STRING,
            dir: oracledb.BIND_OUT
          },
          o2: {
            type: oracledb.STRING,
            dir: oracledb.BIND_OUT
          }
        };
        var plsqlStatement = 'BEGIN ' + appConfig.database.authenticationProcedure + '(:i1, :i2, :i3, :o1, :o2); END;';

        logger.debug('authenticateUser: plsqlStatement', plsqlStatement);

        connection.execute(
          plsqlStatement,
          bindvars,
          function(err, result) {
            if (err) {
              logger.error('authenticateUser: err.message', err.message);
              callback({
                "success": false,
                "error": err
              });
              module.exports.releaseConnection(connection, false);
              return;
            }
            logger.debug('authenticateUser: result.outBinds', result.outBinds);
            callback({
              "success": true,
              "outBinds": result.outBinds
            });
            module.exports.releaseConnection(connection);
          });
      }
    });
  },
  /**
   * Validate user access token using DB validate function
   * @param {string} pUsername
   * @param {string} pUserAccessToken
   * @param {function} callback
   */
  validateToken: function(pUsername, pUserAccessToken, callback) {
    module.exports.getConnection(function(connectionCallback) {
      if (connectionCallback.success) {
        var connection = connectionCallback.connection;
        var bindvars = {
          i1: pUsername,
          i2: pUserAccessToken,
          ret: {
            dir: oracledb.BIND_OUT,
            type: oracledb.STRING
          }
        };
        var plsqlStatement = 'BEGIN :ret := ' + appConfig.database.validateTokenFunction + '(:i1, :i2); END;';

        logger.debug('validateToken: plsqlStatement', plsqlStatement);

        connection.execute(
          plsqlStatement,
          bindvars,
          function(err, result) {
            if (err) {
              logger.error('validateToken: err.message', err.message);
              callback({
                "success": false,
                "error": err
              });
              module.exports.releaseConnection(connection, false);
              return;
            }
            logger.debug('validateToken: result.outBinds', result.outBinds);
            callback({
              "success": true,
              "outBinds": result.outBinds
            });
            module.exports.releaseConnection(connection, false);
          });
      }
    });
  }
};
