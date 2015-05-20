(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var Person, chenglong, name;

Person = require('./main');

chenglong = new Person('chenglong', 24);

name = chenglong.getName();

console.log(name);

},{"./main":2}],2:[function(require,module,exports){
var Person;

Person = (function() {
  function Person(name, age) {
    this.name = name;
    this.age = age;
  }

  Person.prototype.getName = function() {
    return this.name;
  };

  Person.prototype.setName = function(name) {
    return this.name = name;
  };

  return Person;

})();

module.exports = Person;

},{}]},{},[1]);
