import React from 'react'
import ReactDOM from 'react-dom'

class App extends React.Component {
  constructor() {
    super()
    this.state = {
      playlists: []
    }
  }

  componentDidMount() {
    fetch('/playlists')
      .then(response => response.json())
      .then(data => this.setState({ playlists: data }));
  }

  render() {
    const { playlists } = this.state
    return (
      <section>
        <h3>Playlists</h3>
        <ul>
          {playlists.map(playlist =>
            <li key={playlist.id}>
              {playlist.name}
            </li>
          )}
        </ul>
      </section>
    )
  }
}

export default App
