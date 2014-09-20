module.exports = (grunt) ->

  grunt.config "uglify",
    options:
      report:           "min"
      preserveComments: false
    dist:
      files: [
        {
          src: "dist/macgyver-table.js"
          dest: "dist/macgyver-table.min.js"
        }
      ]
