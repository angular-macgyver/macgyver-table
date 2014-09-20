module.exports = (grunt) ->
  grunt.config "concat",
    js:
      options:
        banner:"""/**
                   * MacGyver Table v<%= pkg.version %>
                   * @link <%= pkg.homepage %>
                   * @license <%= pkg.license[0].type %>
                   */
                  (function(window, angular, undefined) {

                """
        footer: "\n})(window, window.angular);"
      dest: "dist/macgyver-table.js"
      src: [
        "bower_components/jquery.ui/ui/jquery.ui.core.js",
        "bower_components/jquery.ui/ui/jquery.ui.widget.js",
        "bower_components/jquery.ui/ui/jquery.ui.mouse.js",
        "bower_components/jquery.ui/ui/jquery.ui.resizable.js",
        "bower_components/jquery.ui/ui/jquery.ui.sortable.js",
        "tmp/js/main.js",
        "tmp/js/services/table.js",
        "tmp/js/services/directive_helpers.js",
        "tmp/js/services/hookable_directive_controller.js",
        "tmp/js/directives/reorderable.js",
        "tmp/js/directives/resizable.js",
        "tmp/js/directives/*.js"
      ]

    css:
      files: [
        {
          dest: "dist/macgyver-table.css"
          src:  [
            "vendor/css/jquery-ui-1.10.0.custom.css",
            "tmp/css/mac-table-themes.css",
            "tmp/css/table_view.css"
          ]
        }
      ]
