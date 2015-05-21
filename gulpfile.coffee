gulp = require 'gulp'

gulp.task 'default', ['uglify_js']

gulp.task 'uglify_js', ['browserify_js'], ->
    uglify = require 'gulp-uglify'
    rename = require 'gulp-rename'

    gulp
    .src './build/js/app.js'
    .pipe uglify()
    .pipe rename 'app.min.js'
    .pipe gulp.dest './build/js/'


gulp.task 'browserify_js', ['reactify_js'], ->
    browserify = require 'browserify'
    source = require 'vinyl-source-stream'

    browserify './src/js/app.js'
    .bundle()
    .pipe source 'app.js'
    .pipe gulp.dest './build/js/'


# react js
gulp.task 'reactify_js', ['coffee2js'], ->
    react = require 'gulp-react'
    rename = require 'gulp-rename'

    gulp
    .src './src/js/b.js'
    .pipe react()
    .pipe rename 'app.js'
    .pipe gulp.dest './src/js/'



gulp.task 'coffee2js', ->
    coffee = require 'gulp-coffee'
    gutil = require 'gulp-util'

    gulp
    .src './src/coffee/*.coffee'
    .pipe coffee bare: true
    .on 'error', gutil.log
    .pipe gulp.dest './src/js/'
