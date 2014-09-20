module.exports = (grunt) ->

  grunt.config "stylus",
    #
    # Stylus section
    # Adding nib to all stylus
    # Compile app css into tmp/app.css temporarily
    #
    compile:
      options:
        urlfunc:
          name: "url"
          paths: ["src"]
        import:  ["nib"]
      files: [
        expand:  true
        flatten: true
        src:     "src/css/*.styl"
        dest:    "tmp/css"
        ext:     ".css"
      ]
