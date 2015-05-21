var HelloMessage, Person, React, chenglong, name;

Person = require('./main');

chenglong = new Person('chenglong', 24);

name = chenglong.getName();

console.log(name);

React = require('./react');

HelloMessage = React.createClass({displayName: "HelloMessage",
  render: function() {
    return React.createElement("div", null, "Hello ", this.props.name);
  }
});

React.render(React.createElement(HelloMessage, {name: "John"}), document.getElementById('test'));
