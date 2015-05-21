gulp = require 'gulp'

gulp.task 'coffee', ->
    coffee = require 'gulp-coffee'
    gutil = require 'gulp-util'
    gulp
    .src './src/coffee/*.coffee'
    .pipe coffee bare: true
    .on 'error', gutil.log
    .pipe gulp.dest './src/js/'

gulp.task 'browserify', ->
    browserify = require 'browserify'
    source = require 'vinyl-source-stream'
    browserify './src/js/app.js'
    .bundle()
    .pipe source 'app.js'
    .pipe gulp.dest './build/js/'


gulp.task 'reactify', ->
    react = require 'gulp-react'
    rename = require 'gulp-rename'
    gulp.src './src/js/b.js'
    .pipe react()
    .pipe rename 'app.js'
    .pipe gulp.dest './src/js/'


gulp.task 'default', ['coffee', 'reactify', 'browserify']
#gulp.task 'default', ['coffee']




