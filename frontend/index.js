import React from 'react'
import { createStore } from 'redux'
import { Provider } from 'react-redux'
import { render } from 'react-dom'
import App from './App'
import inventoryApp from './reducers/index.js'

let store = createStore(inventoryApp)

render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root')
)
