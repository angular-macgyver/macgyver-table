module.exports = (grunt) ->

  #
  # watch section
  # Watch all js, css and jade changes
  #
  grunt.config "watch",
    js:
      files: ["src/**/*.coffee", "src/*.coffee"]
      tasks: [
        "coffee"
        "concat:js"
        "clean"
        "karma:unit:run"
      ]

    test:
      files: ["test/**/*.spec.coffee"]
      tasks: ["karma:unit:run"]

    css:
      files: ["src/css/*.styl"]
      tasks: ["stylus", "concat:css", "clean"]
