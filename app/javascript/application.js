import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'mobx-react';
import VenuesStore from './src/stores/VenuesStore';
import App from './src/components/App';
ReactDOM.render(
  <Provider VenuesStore={VenuesStore} >
    <App />
  </Provider>,
  document.getElementById('root')
);
