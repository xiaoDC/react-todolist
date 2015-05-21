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
