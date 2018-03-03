var avc = {
  /**
   * Global Variables
   */
  gAvcSocket: null,
  gAjaxIdentifier: null,
  gPlgFilePrefix: null,
  /**
   * Connect to websocket of AVC-Bridge-Service
   * @param {string} pBaseUrl
   * @param {string} pServerKey
   * @param {string} pUsername
   * @param {string} pUserAccessToken
   */
  connectWebsocket: function(pBaseUrl, pServerKey, pUsername, pUserAccessToken) {
    var apexSessionId = $v('pInstance');
    var connectString = 'username=' + pUsername.toLowerCase() + '&serverKey=' + pServerKey + '&userAccessToken=' + pUserAccessToken + '&apexSessionId=' + apexSessionId;

    // logging
    apex.debug.log('avc.connectWebsocket - connectString', connectString);

    // connect to socket
    avc.gAvcSocket = io.connect(pBaseUrl + '/avc', {
      query: connectString
    });
  },
  /**
   * Handle websocket events and messages
   * @param {string} pAllowSSPUrl
   */
  handleWebsocket: function(pAllowSSPUrl) {
    var url = '';
    var apexSessionId = $v('pInstance');
    // socket message event
    avc.gAvcSocket.on('message', function(data) {
      // logging & event
      apex.debug.log('avc.handleWebsocket - message data', data);
      apex.event.trigger('body', 'avc-websocket-message', data);

      // Navigate to page
      if (data.type == 'NAV_TO_PAGE' && data.pageId) {
        apex.event.trigger('body', 'avc-websocket-message-nav_to_page', data);
        url = 'f?p=' + $v('pFlowId') + ':' + data.pageId + ':' + apexSessionId + ':::::';
        avc.getProperUrl(url, pAllowSSPUrl, function(targetUrl) {
          apex.navigation.redirect(targetUrl);
        });
        // Navigate to page and search
      } else if (data.type == 'NAV_TO_PAGE_SEARCH' && data.pageId) {
        apex.event.trigger('body', 'avc-websocket-message-nav_to_page_search', data);
        url = 'f?p=' + $v('pFlowId') + ':' + data.pageId + ':' + apexSessionId + ':::' + data.searchParam + data.searchValue;
        avc.getProperUrl(url, pAllowSSPUrl, function(targetUrl) {
          apex.navigation.redirect(targetUrl);
        });
        // search in current page
      } else if (data.type == 'CURRENT_PAGE_SEARCH' && data.pages) {
        apex.event.trigger('body', 'avc-websocket-message-current_page_search', data);
        var pagesArray = data.pages;
        for (var i = 0; i < pagesArray.length; i++) {
          if (pagesArray[i].pageId == parseInt($v('pFlowStepId'))) {
            var searchField = pagesArray[i].searchField;
            $('#' + searchField).val(data.searchValue);
            $('#' + searchField).parents('.a-IRR-search').find('.a-IRR-button--search').click();
          }
        }
        // party mode for fun
      } else if (data.type == 'PARTY_MODE') {
        apex.event.trigger('body', 'avc-websocket-message-party_mode', data);
        avc.partyMode();
      }
    });
    // socket disconnect event
    avc.gAvcSocket.on('disconnect', function() {
      // logging & event
      apex.debug.log('avc.handleWebsocket - websocket disconnected');
      apex.event.trigger('body', 'avc-websocket-disconnect');
    });
  },
  /**
   * Get proper URL, e.g with SSP & checksum or plain URL
   * @param {string} pUrl
   * @param {string} pAllowSSPUrl
   * @param {function} callback
   */
  getProperUrl: function(pUrl, pAllowSSPUrl, callback) {
    // check if allow SSP URL is enabled
    if (pAllowSSPUrl == 'Y') {
      // APEX Ajax Call
      apex.server.plugin(avc.gAjaxIdentifier, {
        x01: pUrl
      }, {
        dataType: 'json',
        // success
        success: function(data) {
          apex.debug.log('avc.getProperUrl - AJAX success', data);
          if (data.success) {
            callback(data.url);
          } else {
            callback(pUrl);
          }
        },
        // error
        error: function(xhr, pMessage) {
          apex.debug.log('avc.getProperUrl - AJAX error', pMessage);
          callback(pUrl);
        }
      });
    } else {
      callback(pUrl);
    }
  },
  /**
   * Party Mode just for fun
   * Taken from: https://codepen.io/taylor8294/pen/HzEkg
   */
  partyMode: function() {
    (function() {
      function addStyleSheet() {
        var e = document.createElement("link");
        e.setAttribute("type", "text/css");
        e.setAttribute("rel", "stylesheet");
        e.setAttribute("href", styleSrc);
        e.setAttribute("class", markerClass);
        document.body.appendChild(e);
      }

      function removeAddedElements() {
        var e = document.getElementsByClassName(markerClass);
        for (var t = 0; t < e.length; t++) {
          document.body.removeChild(e[t]);
        }
      }

      function flashEffect() {
        var e = document.createElement("div");
        e.setAttribute("class", flashClass);
        document.body.appendChild(e);
        setTimeout(function() {
          document.body.removeChild(e);
        }, 100);
      }

      function getSize(e) {
        return {
          height: e.offsetHeight,
          width: e.offsetWidth
        };
      }

      function isRightSize(i) {
        var s = getSize(i);
        return s.height > minHeight && s.height < maxHeight &&
          s.width > minWidth && s.width < maxWidth;
      }

      function heightFromTop(e) {
        var n = 0;
        while (!!e) {
          n += e.offsetTop;
          e = e.offsetParent;
        }
        return n;
      }

      function getWindowHeight() {
        var e = document.documentElement;
        if (!!window.innerWidth) {
          return window.innerHeight;
        } else if (e && !isNaN(e.clientHeight)) {
          return e.clientHeight;
        }
        return 0;
      }

      function getPageYOffset() {
        if (window.pageYOffset) {
          return window.pageYOffset;
        }
        return Math.max(document.documentElement.scrollTop, document.body.scrollTop);
      }

      function isOnScreen(e) {
        var t = heightFromTop(e);
        return t >= yOffset && t <= windowHeight + yOffset;
      }

      function main() {
        var e = document.createElement("audio");
        e.setAttribute("class", markerClass);
        e.src = mp3Src;
        e.loop = false;
        e.innerHTML = " <p>If you are reading this, it is because your browser does not support the audio element. We recommend that you get a new browser.</p>";
        document.body.appendChild(e);
        e.addEventListener("ended", function() {
          removeAllShakeMeClasses();
          removeAddedElements();
        }, true);
        e.addEventListener("canplay", function() {
          setTimeout(function() {
            addImFirstClass(startElement);
          }, 500);
          setTimeout(function() {
            removeAllShakeMeClasses();
            flashEffect();
            for (var e = 0; e < O.length; e++) {
              addShakeMeClass(O[e]);
            }
          }, 15500);
        }, true);
        e.play();
      }

      function addImFirstClass(e) {
        e.className += " " + shakeMeClass + " " + imFirstClass;
      }

      function addShakeMeClass(e) {
        e.className += " " + shakeMeClass + " " + varClasses[Math.floor(Math.random() * varClasses.length)];
      }

      function removeAllShakeMeClasses() {
        var e = document.getElementsByClassName(shakeMeClass);
        var t = new RegExp("\\b" + shakeMeClass + "\\b");
        for (var n = 0; n < e.length;) {
          e[n].className = e[n].className.replace(t, "");
        }
      }

      var minHeight = 30;
      var minWidth = 30;
      var maxHeight = 350;
      var maxWidth = 350;
      var mp3Src = avc.gPlgFilePrefix + "misc/harlem-shake.mp3";
      var shakeMeClass = "mw-harlem_shake_me";
      var imFirstClass = "im_first";
      var varClasses = ["im_drunk", "im_baked", "im_trippin", "im_blown"];
      var flashClass = "mw-strobe_light";
      var styleSrc = avc.gPlgFilePrefix + "css/harlem-shake-style.min.css";
      var markerClass = "mw_added_css";
      var windowHeight = getWindowHeight();
      var yOffset = getPageYOffset();
      var pageElements = document.getElementsByTagName("*");
      var startElement = null;

      // ----Starts here----
      for (var L = 0; L < pageElements.length; L++) {
        var A = pageElements[L];
        if (isRightSize(A) && isOnScreen(A)) {
          startElement = A;
          break;
        }
      }
      if (startElement === null) {
        apex.debug.log("Could not find a node of the right size. Please try a different page.");
        return;
      } else {
        apex.debug.log("Found start element: ", A, " with width " + getSize(A).width + ", height " + getSize(A).height + ", and a total Y offset of " + heightFromTop(A));
      }
      addStyleSheet();
      main();
      var O = [];
      for (var L = 0; L < pageElements.length; L++) {
        var A = pageElements[L];
        if (isRightSize(A)) {
          O.push(A);
        }
      }
    })();
  },
  /**
   * Plugin handler funtion called from PL/SQL DA
   */
  pluginHandler: function() {
    // plugin attributes
    var daThis = this;
    var ajaxIdentifier = avc.gAjaxIdentifier = daThis.action.ajaxIdentifier;
    var baseUrl = daThis.action.attribute01;
    var serverKey = daThis.action.attribute02;
    var username = daThis.action.attribute03;
    var userAccessToken = daThis.action.attribute04;
    var allowSSPUrl = daThis.action.attribute05;
    var plgFilePrefix = avc.gPlgFilePrefix = daThis.action.attribute06;

    // logging
    apex.debug.log('avc.pluginHandler - ajaxIdentifier', ajaxIdentifier);
    apex.debug.log('avc.pluginHandler - baseUrl', baseUrl);
    apex.debug.log('avc.pluginHandler - serverKey', serverKey);
    apex.debug.log('avc.pluginHandler - username', username);
    apex.debug.log('avc.pluginHandler - userAccessToken', userAccessToken);
    apex.debug.log('avc.pluginHandler - allowSSPUrl', allowSSPUrl);
    apex.debug.log('avc.pluginHandler - plgFilePrefix', plgFilePrefix);

    // connect websocket
    avc.connectWebsocket(baseUrl, serverKey, username, userAccessToken);

    // handle websocket events and messages
    avc.handleWebsocket(allowSSPUrl);
  }
};
