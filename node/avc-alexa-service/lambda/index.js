/**
 * Purpose: Main Index File
 * Author:  Daniel Hochleitner
 */

'use strict';

// global basedir
global.appRootFolder = __dirname;

const appConfig = require('./conf/config.json');
const rest = require('./lib/rest.js');
const Alexa = require('alexa-sdk');

const APP_ID = appConfig.amazon.appId;

const languageStrings = {
  'en': {
    translation: {
      SKILL_NAME: 'Apex Voice Control',
      WELCOME_MESSAGE: "Welcome to %s. You can tell me commands to navigate in your app or to find certain things faster... Now, what can I help you with?",
      WELCOME_REPROMPT: 'For instructions on what you can say, please say help me.',
      DISPLAY_CARD_TITLE: '%s  - navigated to %s.',
      HELP_MESSAGE: "You can tell me commands like, open employees page, search for customer smith, or you can say exit...Now, what can I help you with?",
      HELP_REPROMPT: "You can say things like, open employees page, search for customer smith, or you can say exit...Now, what can I help you with?",
      STOP_MESSAGE: 'Goodbye!',
      REPEAT_MESSAGE: 'Try saying repeat.',
      COMMAND_NOT_FOUND_MESSAGE: "I am sorry, I currently do not know %s"
    },
  },
  'de': {
    translation: {
      SKILL_NAME: 'Apex Sprachsteuerung',
      WELCOME_MESSAGE: 'Willkommen zur %s. Du kannst beispielsweise Kommandos sagen um in deiner App zu navigieren oder um gewisse Dinge schneller zu finden ... Nun, womit kann ich dir helfen?',
      WELCOME_REPROMPT: 'Wenn du wissen möchtest, was du sagen kannst, sag einfach „Hilf mir“.',
      DISPLAY_CARD_TITLE: '%s - %s geöffnet.',
      HELP_MESSAGE: 'Du kannst beispielsweise Kommandos sagen wie „Öffne die Mitarbeiter Seite“ oder "Suche nach Kunde Meier" oder du kannst „Beenden“ sagen ... Wie kann ich dir helfen?',
      HELP_REPROMPT: 'Du kannst beispielsweise Sachen sagen wie „Öffne die Mitarbeiter Seite“ oder "Suche nach Kunde Meier" oder du kannst „Beenden“ sagen ... Wie kann ich dir helfen?',
      STOP_MESSAGE: 'Auf Wiedersehen!',
      REPEAT_MESSAGE: 'Sage einfach „Wiederholen“.',
      COMMAND_NOT_FOUND_MESSAGE: 'Tut mir leid, ich kenne derzeit kein %s'
    },
  },
};

const handlers = {
  // Use LaunchRequest, instead of NewSession if you want to use the one-shot model
  // Alexa, ask [my-skill-invocation-name] to (do something)...
  'LaunchRequest': function() {
    this.attributes.speechOutput = this.t('WELCOME_MESSAGE', this.t('SKILL_NAME'));
    // If the user either does not reply to the welcome message or says something that is not
    // understood, they will be prompted again with this text.
    this.attributes.repromptSpeech = this.t('WELCOME_REPROMPT');

    this.response.speak(this.attributes.speechOutput).listen(this.attributes.repromptSpeech);
    this.emit(':responseReady');
  },
  'NavigatePageIntent': function() {
    var me = this;
    const pageSlot = me.event.request.intent.slots.Page;
    const lang = me.event.request.locale;
    const userAccessToken = me.event.session.user.accessToken || me.event.context.user.accessToken;
    let pageName;
    if (pageSlot && pageSlot.value) {
      pageName = pageSlot.value.toLowerCase();
    }

    const cardTitle = me.t('DISPLAY_CARD_TITLE', me.t('SKILL_NAME'), pageName);

    rest.navigateToApexPage(pageName, userAccessToken, lang, function(responseData) {
      //if (responseData.success) {
      var message = responseData.message || '';
      var speechOutput = me.attributes.speechOutput = message;
      //var repromptSpeech = me.attributes.repromptSpeech = me.t('REPEAT_MESSAGE');

      //me.response.speak(speechOutput).listen(repromptSpeech);
      me.response.speak(speechOutput);
      me.response.cardRenderer(cardTitle, pageName);
      me.emit(':responseReady');
      //}
    });
  },
  'NavigatePageSearchIntent': function() {
    var me = this;
    const pageSlot = me.event.request.intent.slots.Page;
    const searchSlot = me.event.request.intent.slots.Search;
    const lang = me.event.request.locale;
    const userAccessToken = me.event.session.user.accessToken || me.event.context.user.accessToken;
    let pageName;
    if (pageSlot && pageSlot.value) {
      pageName = pageSlot.value.toLowerCase();
    }
    let searchValue;
    if (searchSlot && searchSlot.value) {
      searchValue = searchSlot.value.toLowerCase();
    }

    const cardTitle = me.t('DISPLAY_CARD_TITLE', me.t('SKILL_NAME'), pageName + ' - ' + searchValue);

    rest.navigateToApexPageAndSearch(pageName, searchValue, userAccessToken, lang, function(responseData) {
      //if (responseData.success) {
      var message = responseData.message || '';
      var speechOutput = me.attributes.speechOutput = message;
      //var repromptSpeech = me.attributes.repromptSpeech = me.t('REPEAT_MESSAGE');

      //me.response.speak(speechOutput).listen(repromptSpeech);
      me.response.speak(speechOutput);
      me.response.cardRenderer(cardTitle, pageName);
      me.emit(':responseReady');
      //}
    });
  },
  'PartyModeIntent': function() {
    var me = this;
    const lang = me.event.request.locale;
    const userAccessToken = me.event.session.user.accessToken || me.event.context.user.accessToken;

    const cardTitle = me.t('DISPLAY_CARD_TITLE', me.t('SKILL_NAME'), 'PARTY!!');

    rest.partyMode(userAccessToken, lang, function(responseData) {
      //if (responseData.success) {
      var message = responseData.message || '';
      var speechOutput = me.attributes.speechOutput = message;
      //var repromptSpeech = me.attributes.repromptSpeech = me.t('REPEAT_MESSAGE');

      //me.response.speak(speechOutput).listen(repromptSpeech);
      me.response.speak(speechOutput);
      me.response.cardRenderer(cardTitle, 'PARTY!!');
      me.emit(':responseReady');
      //}
    });
  },
  'AMAZON.HelpIntent': function() {
    this.attributes.speechOutput = this.t('HELP_MESSAGE');
    this.attributes.repromptSpeech = this.t('HELP_REPROMPT');

    this.response.speak(this.attributes.speechOutput).listen(this.attributes.repromptSpeech);
    this.emit(':responseReady');
  },
  'AMAZON.RepeatIntent': function() {
    this.response.speak(this.attributes.speechOutput).listen(this.attributes.repromptSpeech);
    this.emit(':responseReady');
  },
  'AMAZON.StopIntent': function() {
    this.attributes.speechOutput = this.t('STOP_MESSAGE');
    this.response.speak(this.attributes.speechOutput);
    this.emit(':responseReady');
  },
  'AMAZON.CancelIntent': function() {
    this.attributes.speechOutput = this.t('STOP_MESSAGE');
    this.response.speak(this.attributes.speechOutput);
    this.emit(':responseReady');
  },
  'SessionEndedRequest': function() {
    console.log(`Session ended: ${this.event.request.reason}`);
  },
  'Unhandled': function() {
    this.attributes.speechOutput = this.t('HELP_MESSAGE');
    this.attributes.repromptSpeech = this.t('HELP_REPROMPT');
    this.response.speak(this.attributes.speechOutput).listen(this.attributes.repromptSpeech);
    this.emit(':responseReady');
  },
};

exports.handler = function(event, context, callback) {
  const alexa = Alexa.handler(event, context, callback);
  alexa.appId = APP_ID;
  // To enable string internationalization (i18n) features, set a resources object.
  alexa.resources = languageStrings;
  alexa.registerHandlers(handlers);
  alexa.execute();
};
