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
  }
};
/**
 * General JS functions
 */
$(document).ready(function() {
  $('#state').val(page.getUrlParamValue('state'));
  $('#client_id').val(page.getUrlParamValue('client_id'));
  $('#response_type').val(page.getUrlParamValue('response_type'));
  $('#scope').val(page.getUrlParamValue('scope'));
  $('#redirect_uri').val(page.getUrlParamValue('redirect_uri'));
});
