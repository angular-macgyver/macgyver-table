module.exports = (config) ->
  config.set
    # base path, that will be used to resolve files and exclude
    basePath: ""
    frameworks: ["jasmine"]

    # list of files / patterns to load in the browser
    files: [
      # Javascript
      "bower_components/jquery/jquery.js"
      "bower_components/angular/angular.js"

      "dist/macgyver-table.js"

      # Test Code
      "bower_components/angular-mocks/angular-mocks.js"
      "test/unit/*.spec.coffee"
    ]

    reporters: ["progress"]
    logLevel: config.LOG_INFO
    browsers: ["PhantomJS"]
    preprocessors:
      "../**/*.coffee": ["coffee"]

    plugins: ["karma-*"]
