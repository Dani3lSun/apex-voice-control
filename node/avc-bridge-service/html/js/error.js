/**
 * Namespace for page specific functions
 */
var page = {
  /**
   * get URL parameter value for given parameter
   * @param {string} pParamName
   * @return {string}
   */
  getUrlParamValue: function(pParamName) {
    var urlString = window.location.href;
    var url = new URL(urlString);
    var value = url.searchParams.get(pParamName);
    return value;
  },
  /**
   * navigate to URL of login page
   */
  goToLoginUrl: function() {
    var loginUrl = document.referrer;
    if (loginUrl) {
      window.location.href = loginUrl;
    }
  }
};
/**
 * General JS functions
 */
$(document).ready(function() {
  var errorMsg = page.getUrlParamValue('errorMsg');
  if (errorMsg) {
    $('#errorMsg').text(errorMsg);
  } else {
    $('#errorMsg').text('An Error occurred during login. Please try again.');
  }
});
