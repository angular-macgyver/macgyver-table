module.exports = (grunt) ->

  #
  # karma section
  # Testing framework
  #
  grunt.config "karma",
    options:
      configFile: "karma.conf.coffee"
    unit:
      background: true

    travis:
      reporters: ["dots"]
      singleRun: true

    build:
      singleRun: true
