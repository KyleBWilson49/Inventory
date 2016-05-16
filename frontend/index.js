import React from 'react'
import createStore from 'redux'
import inventoryApp from './reducers/index'
import Provider from 'react-redux'
import App from './App'
import render from 'react-dom'

const store = createStore(inventoryApp)

render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root')
)
