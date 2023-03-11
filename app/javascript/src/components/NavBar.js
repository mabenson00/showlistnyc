import React from 'react';
import { Link } from 'react-router-dom';

function NavBar() {
  return (
    <nav>
      <ul>
        <li>
          <Link to="/venues/new">New Venue</Link>
        </li>
        <li>
          <Link to="/venues">Venues</Link>
        </li>
      </ul>
    </nav>
  );
}
export default NavBar;
