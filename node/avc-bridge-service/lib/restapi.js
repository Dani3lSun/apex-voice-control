/**
 * Purpose: HTTP REST API related functions
 * Author:  Daniel Hochleitner
 */
const appConfig = require(appRootFolder + '/conf/config.json');
const appMessages = require(appRootFolder + '/conf/messages.json');
const logger = require(appRootFolder + '/lib/logger.js').getLogger('restapi');
const oracledb = require(appRootFolder + '/lib/oracledb.js');
const lowdb = require(appRootFolder + '/lib/lowdb.js');
const utils = require(appRootFolder + '/lib/utils.js');
const fs = require('fs');
const querystring = require('querystring');

module.exports = {
  /**
   * Throw HTTP error with specified error code
   * @param {number} pErrId
   * @param {string} pErrMsg
   * @param {object} res
   */
  throwHttpError: function(pErrId, pErrMsg, res) {
    res.writeHead(pErrId, {
      "Content-Type": "text/plain"
    });
    res.write(pErrId + " " + pErrMsg + "\n");
    res.end();
  },
  /**
   * Response JSON object
   * @param {object} pData
   * @param {object} res
   */
  responseJson: function(pData, res) {
    data = pData || {};
    res.writeHead(200, {
      "Content-Type": "application/json"
    });
    res.write(JSON.stringify(data));
    res.end();
  },
  /**
   * Redirect to given URL
   * @param {string} pUrl
   * @param {object} res
   */
  redirectUrl: function(pUrl, res) {
    res.writeHead(302, {
      "Location": pUrl
    });
    res.end();
  },
  /**
   * Basic HTTP Authentication
   * @param {object} req
   * @param {object} res
   */
  basicAuth: function(req, res) {
    var authUser = appConfig.server.basicAuthUser;
    var authPwd = appConfig.server.basicAuthPassword;
    // check if enabled in prefs
    if ((authUser) && (authPwd)) {
      var auth = req.headers['authorization'];
      // debug
      logger.debug('basicAuth: Authorization Header', auth);
      // No Authorization header was passed in so it's the first time the browser hit us
      if (!auth) {
        res.statusCode = 401;
        res.setHeader('WWW-Authenticate', 'Basic realm="Secure Area"');
        res.end();
      }
      // The Authorization was passed in so now we validate it
      else if (auth) {
        // split, original auth looks like  "Basic Y2hhcmxlczoxMjM0NQ=="
        var tmp = auth.split(' ');
        // create a buffer and tell it the data coming in is base64
        var buf = new Buffer(tmp[1], 'base64');
        var plainAuth = buf.toString();
        // debug
        logger.debug('basicAuth: Decoded Authorization', plainAuth);
        // At this point plainAuth = "username:password"
        var creds = plainAuth.split(':');
        var username = creds[0];
        var password = creds[1];
        // Is the username/password correct?
        if ((username == authUser) && (password == authPwd)) {
          res.statusCode = 200;
          return true;
        } else {
          module.exports.throwHttpError(403, 'Forbidden', res);
          return false;
        }
        // not enabled
      }
    } else {
      return true;
    }
  },
  /**
   * Show login page
   * @param {object} res
   */
  loginPage: function(res) {
    fs.readFile(appRootFolder + '/html/login.html', function(err, html) {
      // HTTP 404 when error
      if (err) {
        module.exports.throwHttpError(404, 'Not Found', res);
        // write index.html
      } else {
        res.writeHead(200, {
          "Content-Type": "text/html"
        });
        res.write(html);
        res.end();
      }
    });
  },
  /**
   * Show error page
   * @param {object} res
   */
  errorPage: function(res) {
    fs.readFile(appRootFolder + '/html/error.html', function(err, html) {
      // HTTP 404 when error
      if (err) {
        module.exports.throwHttpError(404, 'Not Found', res);
        // write index.html
      } else {
        res.writeHead(200, {
          "Content-Type": "text/html"
        });
        res.write(html);
        res.end();
      }
    });
  },
  /**
   * Show websocket test client page
   * @param {object} res
   */
  testclientPage: function(req, res) {
    // basic auth
    if (module.exports.basicAuth(req, res)) {
      fs.readFile(appRootFolder + '/html/testclient.html', function(err, html) {
        // HTTP 404 when error
        if (err) {
          module.exports.throwHttpError(404, 'Not Found', res);
          // write index.html
        } else {
          res.writeHead(200, {
            "Content-Type": "text/html"
          });
          res.write(html);
          res.end();
        }
      });
    }
  },
  /**
   * Response JS file
   * @param {string} pFilePath
   * @param {object} res
   */
  getJSFile: function(pFilePath, res) {
    fs.readFile(appRootFolder + pFilePath, function(err, content) {
      // HTTP 404 when error
      if (err) {
        module.exports.throwHttpError(404, 'Not Found', res);
        // write index.html
      } else {
        res.writeHead(200, {
          "Content-Type": "text/javascript"
        });
        res.write(content);
        res.end();
      }
    });
  },
  /**
   * Response CSS file
   * @param {string} pFilePath
   * @param {object} res
   */
  getCSSFile: function(pFilePath, res) {
    fs.readFile(appRootFolder + pFilePath, function(err, content) {
      // HTTP 404 when error
      if (err) {
        module.exports.throwHttpError(404, 'Not Found', res);
        // write index.html
      } else {
        res.writeHead(200, {
          "Content-Type": "text/css"
        });
        res.write(content);
        res.end();
      }
    });
  },
  /**
   * Response SVG file
   * @param {string} pFilePath
   * @param {object} res
   */
  getSVGFile: function(pFilePath, res) {
    fs.readFile(appRootFolder + pFilePath, function(err, content) {
      // HTTP 404 when error
      if (err) {
        module.exports.throwHttpError(404, 'Not Found', res);
        // write index.html
      } else {
        res.writeHead(200, {
          "Content-Type": "image/svg+xml"
        });
        res.write(content);
        res.end();
      }
    });
  },
  /**
   * Authenticate User with Oracle DB Function
   * @param {object} req
   * @param {object} res
   */
  authenticateUser: function(req, res) {
    var body = [];

    req.on('error', function(err) {
      logger.error('authenticateUser: req.error', err);
    }).on('data', function(chunk) {
      body.push(chunk);
      // max. allowed post size - default: 524288 ~ 500kb
      if (Buffer.concat(body).toString().length > appConfig.server.maxPostSize) {
        logger.error('authenticateUser: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
        res.writeHead(413, {
          'Content-Type': 'text/plain'
        });
        req.connection.destroy();
        return;
      }
    }).on('end', function() {
      body = Buffer.concat(body).toString();
      // max. allowed post size - default: 524288 ~ 500kb
      if (body.length > appConfig.server.maxPostSize) {
        logger.error('authenticateUser: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
        return;
      }
      // debug
      logger.debug('authenticateUser: body', body);

      try {
        var parsedBody = querystring.parse(body);
      } catch (err) {
        logger.error('authenticateUser: querystring parse error', err);
        res.end();
      }

      if (parsedBody) {
        // debug
        logger.debug('authenticateUser: parsedBody', parsedBody);

        var username = parsedBody.username;
        var password = parsedBody.password;
        var clientId = parsedBody.client_id;
        var responseType = parsedBody.response_type;
        var state = parsedBody.state;
        //var scope = parsedBody.scope;
        var redirectUri = parsedBody.redirect_uri;
        // check if username and password is there
        if (!(username) || !(password)) {
          logger.debug('authenticateUser: Missing Username or Password');
          module.exports.redirectUrl('/error?errorMsg=' + encodeURIComponent('Missing Username or Password.'), res);
          return;
        }
        // check for correct amazon client_id
        if (clientId !== appConfig.amazon.accountLinking.clientId) {
          logger.debug('authenticateUser: client_id does not match');
          module.exports.redirectUrl('/error?errorMsg=' + encodeURIComponent('client_id does not match.'), res);
          return;
        }
        // check for correct amazon redirect_uri
        if (!(appConfig.amazon.accountLinking.redirectUrls.indexOf(redirectUri) > -1)) {
          logger.debug('authenticateUser: redirect_uri is not valid');
          module.exports.redirectUrl('/error?errorMsg=' + encodeURIComponent('redirect_uri is not valid.'), res);
          return;
        }
        // check for correct amazon response_type
        if (responseType !== 'token') {
          logger.debug('authenticateUser: response_type must be token for implicit grant');
          module.exports.redirectUrl('/error?errorMsg=' + encodeURIComponent('response_type must be token for implicit grant.'), res);
          return;
        }

        // authenticate user against db
        oracledb.authenticateUser(username, password, function(execResult) {
          logger.debug('authenticateUser: execResult', execResult);
          // db call successful
          if (execResult.success) {
            // authentication successful
            if (execResult.outBinds && execResult.outBinds.o1 == 'Y') {
              // remove old local sessions for this user, thus new access token was generated
              lowdb.removeUserSession(username);
              // redirect
              var finalRedirectUrl = redirectUri + '#state=' + state + '&access_token=' + execResult.outBinds.o2 + '&token_type=Bearer';
              logger.debug('authenticateUser: authentication successful, redirect to AWS', finalRedirectUrl);
              module.exports.redirectUrl(finalRedirectUrl, res);
              // authentication not successful
            } else {
              logger.debug('authenticateUser: authentication not successful, redirect to error page');
              module.exports.redirectUrl('/error?errorMsg=' + encodeURIComponent('Username or Password incorrect.'), res);
            }
          } else {
            logger.debug('authenticateUser: Database error', execResult.error);
            module.exports.redirectUrl('/error?errorMsg=' + encodeURIComponent('DB Error: ' + execResult.error), res);
          }
          res.end();
        });
      }
    });
  },
  /**
   * Navigate to APEX page REST service
   * @param {object} req
   * @param {object} res
   */
  navigateToApexPage: function(req, res) {
    // basic auth
    if (module.exports.basicAuth(req, res)) {
      var body = [];

      req.on('error', function(err) {
        logger.error('navigateToApexPage: req.error', err);
      }).on('data', function(chunk) {
        body.push(chunk);
        // max. allowed post size - default: 524288 ~ 500kb
        if (Buffer.concat(body).toString().length > appConfig.server.maxPostSize) {
          logger.error('navigateToApexPage: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          res.writeHead(413, {
            'Content-Type': 'text/plain'
          });
          req.connection.destroy();
          return;
        }
      }).on('end', function() {
        body = Buffer.concat(body).toString();
        // max. allowed post size - default: 524288 ~ 500kb
        if (body.length > appConfig.server.maxPostSize) {
          logger.error('navigateToApexPage: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          return;
        }
        // debug
        logger.debug('navigateToApexPage: body', body);

        try {
          var parsedBody = JSON.parse(body);
        } catch (err) {
          logger.error('navigateToApexPage: JSON parse error', err);
          res.end();
        }

        if (parsedBody) {
          // debug
          logger.debug('navigateToApexPage: parsedBody', parsedBody);

          var lang = utils.getMainLanguage(parsedBody.lang);
          var clientId = parsedBody.clientId;
          var pageName = parsedBody.pageName;
          var userAccessToken = parsedBody.userAccessToken;

          // check for correct amazon client_id
          if (clientId !== appConfig.amazon.accountLinking.clientId) {
            logger.debug('navigateToApexPage: client_id does not match');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.clientIdNotMatch[lang]
            }, res);
            return;
          }
          // check required params
          if (pageName && userAccessToken) {
            var username = lowdb.getUserFromToken(userAccessToken);
            // only process if user is found
            if (username) {
              // get page actions object
              var pageActionObject = utils.getActionPageObject(pageName, lang);
              // only process if page action is found
              if (pageActionObject && pageActionObject.pageId) {
                // send websocket message
                appWebsocket.sendMessage(username, {
                  "type": "NAV_TO_PAGE",
                  "pageName": pageName,
                  "pageId": pageActionObject.pageId
                });
                // response success json
                module.exports.responseJson({
                  "success": true,
                  "message": appMessages.messages.messageSent[lang]
                }, res);
              } else {
                logger.debug('navigateToApexPage: no matching page action found');
                // response error json
                module.exports.responseJson({
                  "success": false,
                  "message": appMessages.messages.noPageActionFound[lang]
                }, res);
                return;
              }

            } else {
              logger.debug('navigateToApexPage: username not found');
              // response error json
              module.exports.responseJson({
                "success": false,
                "message": appMessages.messages.userNotFound[lang]
              }, res);
              return;
            }
          } else {
            logger.debug('navigateToApexPage: missig required parameter - pageName & userAccessToken');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.missingParameter[lang]
            }, res);
            return;
          }
        }
      });
    }
  },
  /**
   * Navigate to APEX page and search REST service
   * @param {object} req
   * @param {object} res
   */
  navigateToApexPageAndSearch: function(req, res) {
    // basic auth
    if (module.exports.basicAuth(req, res)) {
      var body = [];

      req.on('error', function(err) {
        logger.error('navigateToApexPageAndSearch: req.error', err);
      }).on('data', function(chunk) {
        body.push(chunk);
        // max. allowed post size - default: 524288 ~ 500kb
        if (Buffer.concat(body).toString().length > appConfig.server.maxPostSize) {
          logger.error('navigateToApexPageAndSearch: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          res.writeHead(413, {
            'Content-Type': 'text/plain'
          });
          req.connection.destroy();
          return;
        }
      }).on('end', function() {
        body = Buffer.concat(body).toString();
        // max. allowed post size - default: 524288 ~ 500kb
        if (body.length > appConfig.server.maxPostSize) {
          logger.error('navigateToApexPageAndSearch: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          return;
        }
        // debug
        logger.debug('navigateToApexPageAndSearch: body', body);

        try {
          var parsedBody = JSON.parse(body);
        } catch (err) {
          logger.error('navigateToApexPageAndSearch: JSON parse error', err);
          res.end();
        }

        if (parsedBody) {
          // debug
          logger.debug('navigateToApexPageAndSearch: parsedBody', parsedBody);

          var lang = utils.getMainLanguage(parsedBody.lang);
          var clientId = parsedBody.clientId;
          var pageName = parsedBody.pageName;
          var searchValue = parsedBody.searchValue;
          var userAccessToken = parsedBody.userAccessToken;

          // check for correct amazon client_id
          if (clientId !== appConfig.amazon.accountLinking.clientId) {
            logger.debug('navigateToApexPageAndSearch: client_id does not match');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.clientIdNotMatch[lang]
            }, res);
            return;
          }
          // check required params
          if (pageName && searchValue && userAccessToken) {
            var username = lowdb.getUserFromToken(userAccessToken);
            // only process if user is found
            if (username) {
              // get page actions object
              var pageActionObject = utils.getActionPageObject(pageName, lang);
              // only process if page action is found
              if (pageActionObject && pageActionObject.pageId) {
                // send websocket message
                appWebsocket.sendMessage(username, {
                  "type": "NAV_TO_PAGE_SEARCH",
                  "pageName": pageName,
                  "searchValue": searchValue,
                  "pageId": pageActionObject.pageId,
                  "searchParam": pageActionObject.searchParam
                });
                // response success json
                module.exports.responseJson({
                  "success": true,
                  "message": appMessages.messages.messageSent[lang]
                }, res);
              } else {
                logger.debug('navigateToApexPageAndSearch: no matching page action found');
                // response error json
                module.exports.responseJson({
                  "success": false,
                  "message": appMessages.messages.noPageActionFound[lang]
                }, res);
                return;
              }

            } else {
              logger.debug('navigateToApexPageAndSearch: username not found');
              // response error json
              module.exports.responseJson({
                "success": false,
                "message": appMessages.messages.userNotFound[lang]
              }, res);
              return;
            }
          } else {
            logger.debug('navigateToApexPageAndSearch: missig required parameter - pageName & searchValue & userAccessToken');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.missingParameter[lang]
            }, res);
            return;
          }
        }
      });
    }
  },
  /**
   * Search on current APEX page REST service
   * @param {object} req
   * @param {object} res
   */
  searchOnCurrentApexPage: function(req, res) {
    // basic auth
    if (module.exports.basicAuth(req, res)) {
      var body = [];

      req.on('error', function(err) {
        logger.error('searchOnCurrentApexPage: req.error', err);
      }).on('data', function(chunk) {
        body.push(chunk);
        // max. allowed post size - default: 524288 ~ 500kb
        if (Buffer.concat(body).toString().length > appConfig.server.maxPostSize) {
          logger.error('searchOnCurrentApexPage: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          res.writeHead(413, {
            'Content-Type': 'text/plain'
          });
          req.connection.destroy();
          return;
        }
      }).on('end', function() {
        body = Buffer.concat(body).toString();
        // max. allowed post size - default: 524288 ~ 500kb
        if (body.length > appConfig.server.maxPostSize) {
          logger.error('searchOnCurrentApexPage: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          return;
        }
        // debug
        logger.debug('searchOnCurrentApexPage: body', body);

        try {
          var parsedBody = JSON.parse(body);
        } catch (err) {
          logger.error('searchOnCurrentApexPage: JSON parse error', err);
          res.end();
        }

        if (parsedBody) {
          // debug
          logger.debug('navigateToApexPageAndSearch: parsedBody', parsedBody);

          var lang = utils.getMainLanguage(parsedBody.lang);
          var clientId = parsedBody.clientId;
          var searchValue = parsedBody.searchValue;
          var userAccessToken = parsedBody.userAccessToken;

          // check for correct amazon client_id
          if (clientId !== appConfig.amazon.accountLinking.clientId) {
            logger.debug('searchOnCurrentApexPage: client_id does not match');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.clientIdNotMatch[lang]
            }, res);
            return;
          }
          // check required params
          if (searchValue && userAccessToken) {
            var username = lowdb.getUserFromToken(userAccessToken);
            // only process if user is found
            if (username) {
              // get action pages array
              var actionPages = utils.getActionPages();
              // only process if page action is found
              if (actionPages) {
                // send websocket message
                appWebsocket.sendMessage(username, {
                  "type": "CURRENT_PAGE_SEARCH",
                  "searchValue": searchValue,
                  "pages": actionPages
                });
                // response success json
                module.exports.responseJson({
                  "success": true,
                  "message": appMessages.messages.messageSent[lang]
                }, res);
              } else {
                logger.debug('searchOnCurrentApexPage: no action pages found');
                // response error json
                module.exports.responseJson({
                  "success": false,
                  "message": appMessages.messages.noPageActionFound[lang]
                }, res);
                return;
              }

            } else {
              logger.debug('searchOnCurrentApexPage: username not found');
              // response error json
              module.exports.responseJson({
                "success": false,
                "message": appMessages.messages.userNotFound[lang]
              }, res);
              return;
            }
          } else {
            logger.debug('searchOnCurrentApexPage: missig required parameter - searchValue & userAccessToken');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.missingParameter[lang]
            }, res);
            return;
          }
        }
      });
    }
  },
  /**
   * Party Mode REST service
   * @param {object} req
   * @param {object} res
   */
  partyMode: function(req, res) {
    // basic auth
    if (module.exports.basicAuth(req, res)) {
      var body = [];

      req.on('error', function(err) {
        logger.error('partyMode: req.error', err);
      }).on('data', function(chunk) {
        body.push(chunk);
        // max. allowed post size - default: 524288 ~ 500kb
        if (Buffer.concat(body).toString().length > appConfig.server.maxPostSize) {
          logger.error('partyMode: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          res.writeHead(413, {
            'Content-Type': 'text/plain'
          });
          req.connection.destroy();
          return;
        }
      }).on('end', function() {
        body = Buffer.concat(body).toString();
        // max. allowed post size - default: 524288 ~ 500kb
        if (body.length > appConfig.server.maxPostSize) {
          logger.error('partyMode: body.length too big (' + appConfig.server.maxPostSize / 1024 + 'kb)');
          return;
        }
        // debug
        logger.debug('partyMode: body', body);

        try {
          var parsedBody = JSON.parse(body);
        } catch (err) {
          logger.error('partyMode: JSON parse error', err);
          res.end();
        }

        if (parsedBody) {
          // debug
          logger.debug('partyMode: parsedBody', parsedBody);

          var lang = utils.getMainLanguage(parsedBody.lang);
          var clientId = parsedBody.clientId;
          var userAccessToken = parsedBody.userAccessToken;

          // check for correct amazon client_id
          if (clientId !== appConfig.amazon.accountLinking.clientId) {
            logger.debug('partyMode: client_id does not match');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.clientIdNotMatch[lang]
            }, res);
            return;
          }
          // check required params
          if (userAccessToken) {
            var username = lowdb.getUserFromToken(userAccessToken);
            // only process if user is found
            if (username) {
              // send websocket message
              appWebsocket.sendMessage(username, {
                "type": "PARTY_MODE",
                "pageId": 0,
              });
              // response success json
              module.exports.responseJson({
                "success": true,
                "message": appMessages.messages.messageSent[lang]
              }, res);
            } else {
              logger.debug('partyMode: username not found');
              // response error json
              module.exports.responseJson({
                "success": false,
                "message": appMessages.messages.userNotFound[lang]
              }, res);
              return;
            }
          } else {
            logger.debug('partyMode: missig required parameter - userAccessToken');
            // response error json
            module.exports.responseJson({
              "success": false,
              "message": appMessages.messages.missingParameter[lang]
            }, res);
            return;
          }
        }
      });
    }
  }
};
