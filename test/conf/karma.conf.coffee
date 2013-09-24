# Karma configuration


# base path, that will be used to resolve files and exclude
module.exports = (config) ->
  config.set
    basePath: '../../'
    frameworks: ['mocha']
    files :[
      'bower_modules/chai/chai.js'
      'bower_modules/sinon/lib/sinon.js'
      'bower_modules/jquery/jquery.js'
      'bower_modules/angular/angular.js'
      'bower_modules/angular-resource/angular-resource.js'
      'bower_modules/angular-mocks/angular-mocks.js'
      'test/libs/chai-expect.js'
      'test/libs/app.js'
      'client/controllers/*.coffee'
      'client/directives/*.coffee'
      'client/services/*.coffee'
      'client/filters/*.coffee'
      'bin/client/js/views.js'
      'test/client/**/*.coffee'
    ]
    preprocessors:
      '**/*.coffee': 'coffee'
    reporters = 'dots'
    port: 8080
    colors: true
    logLevel: config.LOG_INFO
    autoWatch: false
    browsers: ['Chrome']
    singleRun: false
    plugins: [
      'karma-mocha'
    ]