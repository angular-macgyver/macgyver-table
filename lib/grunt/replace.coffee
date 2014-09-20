module.exports = (grunt) ->

  #
  # replace section
  # Replace placeholder with contents
  #
  grunt.config "replace",
    docs:
      options:
        pattern: /@@include\("([^"]+)"\)/g
        replace: (match) -> grunt.file.read match[1]
      files: [
        expand:  true
        flatten: false
        cwd:     "example"
        src:     "*.html"
        dest:    "example/"
      ]
    version:
      options:
        pattern: /@@version/g
        replace: "<%= pkg.version %>"
      files: [
        src: ['index.html']
      ]
