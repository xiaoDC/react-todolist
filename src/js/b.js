var HelloMessage, React;

React = require("react");

HelloMessage = React.createClass({displayName: "HelloMessage",
  render: function() {
    return React.createElement("div", null, "Hello ", this.props.name);
  }
});

React.render(React.createElement(HelloMessage, {name: "John"}), document.getElementById('test'));

module.exports = HelloMessage;
