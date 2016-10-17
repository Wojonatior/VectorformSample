/* jshint node: true */

module.exports = function(environment) {
  var ENV = {
    modulePrefix: 'vectorform',
    podModulePrefix: 'vectorform/pods',
    environment: environment,
    rootURL: '/',
    locationType: 'auto',
    EmberENV: {
      FEATURES: {
        // Here you can enable experimental features on an ember canary build
        // e.g. 'with-controller': true
      }
    },
    firebase: {
      apiKey: "AIzaSyAyEc12uol9NjuBLJWolT_ElgnrYvhMCF8",
      authDomain: "vectorform-f6a78.firebaseapp.com",
      databaseURL: "https://vectorform-f6a78.firebaseio.com",
      storageBucket: "",
      messagingSenderId: "263062539356"
    },
    contentSecurityPolicy: {
      'script-src': "'self' 'unsafe-eval' apis.google.com",
      'frame-src': "'self' https://*.firebaseapp.com",
      'connect-src': "'self' wss://*.firebaseio.com https://*.googleapis.com"
    },

    APP: {
      // Here you can pass flags/options to your application instance
      // when it is created
    }
  };

  if (environment === 'development') {
    // ENV.APP.LOG_RESOLVER = true;
    // ENV.APP.LOG_ACTIVE_GENERATION = true;
    // ENV.APP.LOG_TRANSITIONS = true;
    // ENV.APP.LOG_TRANSITIONS_INTERNAL = true;
    // ENV.APP.LOG_VIEW_LOOKUPS = true;
  }

  if (environment === 'test') {
    // Testem prefers this...
    ENV.locationType = 'none';

    // keep test console output quieter
    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';

    ENV.firebase = {
      apiKey: "AIzaSyCvvauhGb8sKwzEQkEVISFFLyP_mx7Xl1Q",
      authDomain: "vectorform-test.firebaseapp.com",
      databaseURL: "https://vectorform-test.firebaseio.com",
      storageBucket: "vectorform-test.appspot.com",
      messagingSenderId: "388755819974"
    };
  }

  if (environment === 'production') {

  }

  return ENV;
};
