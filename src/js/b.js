var HelloMessage, Person, React, chenglong, name;

Person = require('./main');

chenglong = new Person('chenglong', 24);

name = chenglong.getName();

console.log(name);

React = require('./react');

HelloMessage = React.createClass({
  render: function() {
    return <div>Hello {this.props.name}</div>;
  }
});

React.render(<HelloMessage name="John" />, document.getElementById('test'));
