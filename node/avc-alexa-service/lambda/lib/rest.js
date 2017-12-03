/**
 * Purpose: HTTP REST related functions
 * Author:  Daniel Hochleitner
 */
const appConfig = require('../conf/config.json');
const appMessages = require('../conf/messages.json');
const request = require('request');

module.exports = {
  /**
   * Get main language code, e.g en from en-US or de-at
   * @param {string} pLang
   * @return {string}
   */
  getMainLanguage: function(pLang) {
    var lang = pLang || 'en';
    if (lang.indexOf('-') > -1) {
      lang = lang.substr(0, lang.indexOf('-'));
    }
    return lang;
  },
  /**
   * Make a HTTP POST Request
   * @param {string} pUrlPath
   * @param {object} pData
   * @param {function} callback
   */
  makePostRequest: function(pUrlPath, pData, callback) {
    var url = appConfig.RESTful.baseUrl + pUrlPath;
    var username = appConfig.RESTful.basicAuthUser;
    var password = appConfig.RESTful.basicAuthPassword;

    request.post({
      headers: {
        'content-type': 'plain/text'
      },
      url: url,
      body: JSON.stringify(pData)
    }, function(error, response, body) {
      callback(error, response, body);
    }).auth(username, password, false);
  },
  /**
   * Make a HTTP POST to /api/navigateToApexPage endpoint
   * @param {string} pPageName
   * @param {string} pUserAccessToken
   * @param {string} pLang
   * @param {function} callback
   */
  navigateToApexPage: function(pPageName, pUserAccessToken, pLang, callback) {
    var lang = module.exports.getMainLanguage(pLang);
    var data = {
      "clientId": appConfig.amazon.accountLinking.clientId,
      "lang": lang,
      "pageName": pPageName.toLowerCase(),
      "userAccessToken": pUserAccessToken
    };

    module.exports.makePostRequest('/api/navigateToApexPage', data, function(error, response, body) {
      if (!error && response.statusCode == 200) {
        var responseData = {};
        try {
          responseData = JSON.parse(body);
        } catch (err) {
          console.log(err);
        }
        callback(responseData);
      } else {
        callback({
          "success": false,
          "message": appMessages.messages.connectionError[lang]
        });
      }
    });
  },
  /**
   * Make a HTTP POST to /api/navigateToApexPageAndSearch endpoint
   * @param {string} pPageName
   * @param {string} pSearchValue
   * @param {string} pUserAccessToken
   * @param {string} pLang
   * @param {function} callback
   */
  navigateToApexPageAndSearch: function(pPageName, pSearchValue, pUserAccessToken, pLang, callback) {
    var lang = module.exports.getMainLanguage(pLang);
    var data = {
      "clientId": appConfig.amazon.accountLinking.clientId,
      "lang": lang,
      "pageName": pPageName.toLowerCase(),
      "searchValue": pSearchValue.toLowerCase(),
      "userAccessToken": pUserAccessToken
    };

    module.exports.makePostRequest('/api/navigateToApexPageAndSearch', data, function(error, response, body) {
      if (!error && response.statusCode == 200) {
        var responseData = {};
        try {
          responseData = JSON.parse(body);
        } catch (err) {
          console.log(err);
        }
        callback(responseData);
      } else {
        callback({
          "success": false,
          "message": appMessages.messages.connectionError[lang]
        });
      }
    });
  },
  /**
   * Make a HTTP POST to /api/partyMode endpoint
   * @param {string} pUserAccessToken
   * @param {string} pLang
   * @param {function} callback
   */
  partyMode: function(pUserAccessToken, pLang, callback) {
    var lang = module.exports.getMainLanguage(pLang);
    var data = {
      "clientId": appConfig.amazon.accountLinking.clientId,
      "lang": lang,
      "userAccessToken": pUserAccessToken
    };

    module.exports.makePostRequest('/api/partyMode', data, function(error, response, body) {
      if (!error && response.statusCode == 200) {
        var responseData = {};
        try {
          responseData = JSON.parse(body);
        } catch (err) {
          console.log(err);
        }
        callback(responseData);
      } else {
        callback({
          "success": false,
          "message": appMessages.messages.connectionError[lang]
        });
      }
    });
  }
};
