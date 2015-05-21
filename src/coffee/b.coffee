React = require "react"

HelloMessage = React.createClass(
    render: ()->
        return `<div>Hello {this.props.name}</div>`
)

React.render  `<HelloMessage name="John" />, document.getElementById('test')`
module.exports = HelloMessage