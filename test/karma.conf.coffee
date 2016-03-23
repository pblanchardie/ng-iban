# Karma configuration
# http://karma-runner.github.io/0.12/config/configuration-file.html

module.exports = (config) ->
  config.set
  # base path, that will be used to resolve files and exclude
    basePath: '../'

  # testing framework to use (jasmine/mocha/qunit/...)
    frameworks: ['jasmine']

  # list of files / patterns to load in the browser
    files: [
      'node_modules/phantomjs-polyfill/bind-polyfill.js',
      'node_modules/angular/angular.js'
      'node_modules/angular-mocks/angular-mocks.js'
      'dist/**/*.js'
      'test/spec/**/*.coffee'
    ],

  # list of files / patterns to exclude
    exclude: []

  # web server port
    port: 8080

  # level of logging
  # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

  # Start these browsers, currently available:
  # - Chrome
  # - ChromeCanary
  # - Firefox
  # - Opera
  # - Safari (only Mac)
  # - PhantomJS
  # - IE (only Windows)
    browsers: [
      'PhantomJS'
    ]

  # Which plugins to enable
    plugins: [
      'karma-phantomjs-launcher'
      'karma-jasmine'
      'karma-coffee-preprocessor'
    ]

  # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

  # Continuous Integration mode
  # if true, it capture browsers, run tests and exit
    singleRun: true

    colors: true

    preprocessors: '**/*.coffee': ['coffee']

# Uncomment the following lines if you are using grunt's server to run the tests
# proxies: '/': 'http://localhost:9000/'
# URL root prevent conflicts with the site root
# urlRoot: '_karma_'
