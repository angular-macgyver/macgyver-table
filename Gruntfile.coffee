module.exports = (grunt) ->
  require('matchdep').filterDev('grunt-*').forEach grunt.loadNpmTasks

  require('matchdep').filterDev('grunt-*').forEach grunt.loadNpmTasks

  grunt.initConfig
    pkg:      grunt.file.readJSON "package.json"
    bower:    grunt.file.readJSON "bower.json"
    jqueryUI: grunt.file.readJSON "bower_components/jquery.ui/package.json"

  grunt.loadTasks "lib/grunt"

  require('time-grunt') grunt

  grunt.registerTask "deploy", "Build and copy to lib/", [
    "coffee"
    "stylus"
    "concat"
    "clean"
    "chalkboard"
    "marked"
    "replace:docs"
    "replace:version"
    "karma:build"
    "uglify:dist"
  ]

  grunt.registerTask "compile", "Compile files", [
    "coffee"
    "stylus"
    "concat"
    "clean"
    "chalkboard"
    "marked"
    "replace:docs"
  ]

  grunt.registerTask "dev", "Watch src and run test server", [
    "compile"
    "karma:unit"
    "connect:example"
    "watch"
  ]

  grunt.registerTask "test:unit", "Alias for karma:travis", ["karma:travis"]
