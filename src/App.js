import React from 'react';

export class App extends React.Component {

  constructor() {
    super();
    this.state = {
      show: true
    };
  }

  componentDidMount() {
    console.log('did mount');
  }

  componentWillUnmount() {
    console.log('will unmount');
  }

  componentDidUpdate() {
    console.log('did update');
  }

  click = () => {
    this.setState({ show: !this.state.show });
  }

  render() {
    return (<button onClick={this.click}>Click to update state</button>);
  }

}

export default App;
