gulp = require "gulp"

srcDir =
    coffee: "./src/coffee/"
    js: "./src/js/"
    scss: "./src/scss/"
    css: "./src/css/"

destDir =
    js: "./build/js/"
    css: "./build/css/"

gulp.task "default", ["uglify_js"]


gulp.task "uglify_js", ["browserify_js"], ->
    uglify = require "gulp-uglify"
    rename = require "gulp-rename"

    gulp
    .src "#{destDir.js}app.js"
    .pipe uglify()
    .pipe rename "app.min.js"
    .pipe gulp.dest "#{destDir.js}"


gulp.task "browserify_js", ["reactify_js"], ->
    browserify = require "browserify"
    source = require "vinyl-source-stream"

    browserify "#{srcDir.js}app.js"
    .bundle()
    .pipe source "app.js"
    .pipe gulp.dest "#{destDir.js}"


# compile coffee, then react js
gulp.task "reactify_js", ->
    react = require "gulp-react"
    gutil = require "gulp-util"
    coffee = require "gulp-coffee"

    gulp
    .src "#{srcDir.coffee}*.coffee"
    .pipe coffee bare: true
    .on "error", gutil.log
    .pipe react()
    .pipe gulp.dest "#{srcDir.js}"
