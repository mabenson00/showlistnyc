import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Venues from './venues/Venues';
import NewVenue from './venues/NewVenue';
import ViewVenue from './venues/ViewVenue';
import NavBar from './NavBar';

function App() {
  return (
      <Router>
        <NavBar />
      <Routes>
        <Route path="/" element={<Venues />} />
        <Route path="/venues/new" element={<NewVenue />} />
        <Route path="/venues/:id" element={<ViewVenue />} />
        <Route path="/venues" element={<Venues />} />
      </Routes>
    </Router>
  );
}

export default App;
