/**
 * Purpose: General logging utility using log4js
 * Author:  Daniel Hochleitner
 */
const appConfig = require(appRootFolder + '/conf/config.json');
const log4js = require('log4js');

log4js.configure({
  appenders: {
    serverLogs: {
      type: 'file',
      filename: appRootFolder + '/logs/server.log'
    },
    oracleLogs: {
      type: 'file',
      filename: appRootFolder + '/logs/oracle.log'
    },
    websocketLogs: {
      type: 'file',
      filename: appRootFolder + '/logs/websocket.log'
    },
    restapiLogs: {
      type: 'file',
      filename: appRootFolder + '/logs/restapi.log'
    },
    lowdbLogs: {
      type: 'file',
      filename: appRootFolder + '/logs/lowdb.log'
    },
    console: {
      type: 'console'
    }
  },
  categories: {
    server: {
      appenders: ['console', 'serverLogs'],
      level: appConfig.server.logLevel
    },
    oracle: {
      appenders: ['console', 'oracleLogs'],
      level: appConfig.server.logLevel
    },
    websocket: {
      appenders: ['console', 'websocketLogs'],
      level: appConfig.server.logLevel
    },
    restapi: {
      appenders: ['console', 'restapiLogs'],
      level: appConfig.server.logLevel
    },
    lowdb: {
      appenders: ['console', 'lowdbLogs'],
      level: appConfig.server.logLevel
    },
    default: {
      appenders: ['console', 'serverLogs'],
      level: appConfig.server.logLevel
    }
  }
});

module.exports = log4js;
