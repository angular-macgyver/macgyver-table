module.exports = (grunt) ->

  #
  # Connect section
  # Creates a temporary server for display example page
  #
  grunt.config "connect",
    example:
      options:
        port:       9001
        hostname:   "0.0.0.0"
        base:       ""
        middleware: (connect, options) ->
          return [
            connect.static(options.base)
            connect.bodyParser()
          ]
