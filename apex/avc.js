var avc = {
  handleWebsocket: function(pUser) {
    var username = pUser.toLowerCase();
    var serverKey = $v('P0_SERVER_KEY');
    var userAccessToken = $v('P0_USER_ACCESS_TOKEN');
    var apexSessionId = $v('pInstance');
    var connectString = 'username=' + username + '&serverKey=' + serverKey + '&userAccessToken=' + userAccessToken + '&apexSessionId=' + apexSessionId;
    console.log(connectString);
    // connect to socket
    var avcSocket = io.connect('https://orclapex.io:8585/avc', {
      query: connectString
    });
    // socket message event
    avcSocket.on('message', function(data) {
      console.log('message data', data);
      if (data.type == 'NAV_TO_PAGE' && data.pageId) {
        apex.navigation.redirect('f?p=' + $v('pFlowId') + ':' + data.pageId + ':' + apexSessionId + ':::::');
      } else if (data.type == 'NAV_TO_PAGE_SEARCH' && data.pageId) {
        apex.navigation.redirect('f?p=' + $v('pFlowId') + ':' + data.pageId + ':' + apexSessionId + ':::' + data.searchParam + data.searchValue);
      } else if (data.type == 'CURRENT_PAGE_SEARCH' && data.pages) {
        var pagesArray = data.pages;
        for (var i = 0; i < pagesArray.length; i++) {
          if (pagesArray[i].pageId == parseInt($v('pFlowStepId'))) {
            var searchField = pagesArray[i].searchField;
            $('#' + searchField).val(data.searchValue);
            $('#' + searchField).parents('.a-IRR-search').find('.a-IRR-button--search').click();
          }
        }
      } else if (data.type == 'PARTY_MODE') {
        avc.partyMode();
      }
    });
    // socket disconnect event
    avcSocket.on('disconnect', function() {
      console.log('avcSocket disconnected');
    });
  },
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
      var mp3Src = "//s3.amazonaws.com/moovweb-marketing/playground/harlem-shake.mp3";
      var shakeMeClass = "mw-harlem_shake_me";
      var imFirstClass = "im_first";
      var varClasses = ["im_drunk", "im_baked", "im_trippin", "im_blown"];
      var flashClass = "mw-strobe_light";
      var styleSrc = "//s3.amazonaws.com/moovweb-marketing/playground/harlem-shake-style.css";
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
        console.warn("Could not find a node of the right size. Please try a different page.");
        return;
      } else {
        console.log("Found start element: ", A, " with width " + getSize(A).width + ", height " + getSize(A).height + ", and a total Y offset of " + heightFromTop(A));
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
  }
};
