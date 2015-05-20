gulp = require 'gulp'

gulp.task 'coffee', ->
    coffee = require 'gulp-coffee'
    gutil = require 'gulp-util'
    gulp
    .src 'src/coffee/*.coffee'
    .pipe coffee bare: true
    .on 'error', gutil.log
    .pipe gulp.dest 'src/js/'

gulp.task 'browserify', ->
    browserify = require 'browserify'

    browserify 'src/js/*.js'
    # gulp
    # .src 'src/js/*.js'
    # .pipe browserify 'src/js/*.js'
    # .pipe gulp.dest './build/js'

gulp.task 'default', ['coffee', 'browserify']
#gulp.task 'default', ['coffee']



