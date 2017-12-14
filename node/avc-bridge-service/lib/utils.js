/**
 * Purpose: Utils / Helper functions
 * Author:  Daniel Hochleitner
 */
const appActions = require(appRootFolder + '/conf/actions.json');
const logger = require(appRootFolder + '/lib/logger.js').getLogger('server');

module.exports = {
  /**
   * Get Action Page Object for specific language string
   * @param {string} pSearchString
   * @param {string} pLang
   * @return {object}
   */
  getActionPageObject(pSearchString, pLang) {
    var lang = module.exports.getMainLanguage(pLang);
    var pagesArray = appActions.pages;

    logger.debug('getActionPageObject: pagesArray', pagesArray);

    for (var i = 0; i < pagesArray.length; i++) {
      if (pagesArray[i].pageName[lang].indexOf(pSearchString) > -1) {
        return pagesArray[i];
      }
    }
  },
  /**
   * Get complete Action Pages Array
   * @return {array}
   */
  getActionPages() {
    return appActions.pages;
  },
  /**
   * Get an date number from some future date (default + 100 years)
   * @param {number} pAddYears
   * @return {number}
   */
  getFutureDate: function(pAddYears) {
    var addYears = pAddYears || 100;
    var now = new Date();
    var futureDate = now.setFullYear(now.getFullYear() + addYears);
    return futureDate;
  },
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
  }
};
