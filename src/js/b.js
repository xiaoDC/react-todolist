var Person, chenglong, name;

Person = require('./main');

chenglong = new Person('chenglong', 24);

name = chenglong.getName();

console.log(name);
