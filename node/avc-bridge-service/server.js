/**
 * Purpose: Main Server File
 * Author:  Daniel Hochleitner
 */

// global basedir
global.appRootFolder = __dirname;

const appConfig = require(appRootFolder + '/conf/config.json');
const logger = require(appRootFolder + '/lib/logger.js').getLogger('server');
const restapi = require(appRootFolder + '/lib/restapi.js');
const lowdb = require(appRootFolder + '/lib/lowdb.js');
const http = require('http');
const https = require('https');
const url = require('url');
const fs = require('fs');
const Bottleneck = require("bottleneck");

/**
 * Server helper functions
 */
var srvHelper = {
  /**
   * Path Routing
   * @param {string} pPath
   * @param {string} pMethod
   * @param {object} req
   * @param {object} res
   */
  pathRouting: function(pPath, pMethod, req, res) {
    // rate limiter
    var limiter = new Bottleneck(appConfig.rateLimitMaxConcurrent, appConfig.rateLimitMinTime);
    // Path Routing
    if (pPath == '/login' && pMethod == 'GET') {
      restapi.loginPage(res);
    } else if (pPath == '/error' && pMethod == 'GET') {
      restapi.errorPage(res);
    } else if (pPath == '/testclient' && pMethod == 'GET') {
      restapi.testclientPage(req, res);
    } else if (pPath == '/js/login.js' && pMethod == 'GET') {
      restapi.getJSFile('/html/js/login.js', res);
    } else if (pPath == '/js/error.js' && pMethod == 'GET') {
      restapi.getJSFile('/html/js/error.js', res);
    } else if (pPath == '/css/style.css' && pMethod == 'GET') {
      restapi.getCSSFile('/html/css/style.css', res);
    } else if (pPath == '/api/autenticateUser' && pMethod == 'POST') {
      limiter.submit(restapi.authenticateUser, req, res, null);
    } else if (pPath == '/api/navigateToApexPage' && pMethod == 'POST') {
      limiter.submit(restapi.navigateToApexPage, req, res, null);
    } else if (pPath == '/api/navigateToApexPageAndSearch' && pMethod == 'POST') {
      limiter.submit(restapi.navigateToApexPageAndSearch, req, res, null);
    } else if (pPath == '/api/partyMode' && pMethod == 'POST') {
      limiter.submit(restapi.partyMode, req, res, null);
    } else {
      restapi.throwHttpError(404, 'Not Found', res);
    }
  }
};

/**
 * HTTP(S) Server Router
 */
var server;
var sslOptions = {};
// HTTPS
if ((appConfig.server.httpSSLKeyPath) && (appConfig.server.httpSSLCertPath)) {
  // With CA Cert
  if (appConfig.server.httpSSLCACertPath) {
    sslOptions = {
      key: fs.readFileSync(appConfig.server.httpSSLKeyPath),
      cert: fs.readFileSync(appConfig.server.httpSSLCertPath),
      ca: fs.readFileSync(appConfig.server.httpSSLCACertPath)
    };
    // Only Key & Cert
  } else {
    sslOptions = {
      key: fs.readFileSync(appConfig.server.httpSSLKeyPath),
      cert: fs.readFileSync(appConfig.server.httpSSLCertPath)
    };
  }
  server = https.createServer(sslOptions, function(req, res) {
    var parsedUrl = url.parse(req.url, true);
    var path = parsedUrl.pathname;
    var method = req.method;
    // debug
    logger.debug('HTTPS Server: req.headers', req.headers);
    logger.debug('HTTPS Server: req.method', req.method);
    logger.debug('HTTPS Server: parsedUrl', parsedUrl);
    // Path Routing
    srvHelper.pathRouting(path, method, req, res);
  });
  // Plain HTTP
} else {
  server = http.createServer(function(req, res) {
    var parsedUrl = url.parse(req.url, true);
    var path = parsedUrl.pathname;
    var method = req.method;
    // debug
    logger.debug('HTTP Server: req.headers', req.headers);
    logger.debug('HTTPS Server: req.method', req.method);
    logger.debug('HTTP Server: parsedUrl', parsedUrl);
    // Path Routing
    srvHelper.pathRouting(path, method, req, res);
  });
}
server.listen(appConfig.server.httpListenPort, appConfig.server.httpListenAddress);

/**
 * Websocket / socket.io
 */
const websocket = require(appRootFolder + '/lib/websocket.js')(server);
websocket.connectSocket();
// global object to use websockets in other libs (e.g restapi.js)
global.appWebsocket = websocket;

/**
 * lowdb local DB cleanup (runs repeatingly)
 */
lowdb.removeOldUserSessions();
lowdb.removeOldSocketSessions();

/**
 * Info logging for started HTTP server
 */
if ((appConfig.server.httpSSLKeyPath) && (appConfig.server.httpSSLCertPath)) {
  logger.info('HTTPS Server listening on ' + appConfig.server.httpListenAddress + ":" + appConfig.server.httpListenPort);
} else {
  logger.info('HTTP Server listening on ' + appConfig.server.httpListenAddress + ":" + appConfig.server.httpListenPort);
}
/**
 * Debug
 */
logger.debug('global.appRootFolder', global.appRootFolder);
//logger.debug('appConfig JSON', appConfig);

/**
 * kill process correctly
 * issue: https://github.com/oracle/node-oracledb/issues/593
 */
process
  .on('SIGTERM', function() {
    logger.info('Terminating');
    process.exit(0);
  })
  .on('SIGINT', function() {
    logger.info('Terminating');
    process.exit(0);
  });
