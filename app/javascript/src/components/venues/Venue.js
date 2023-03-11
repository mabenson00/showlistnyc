import React, { useState } from 'react';

const Venue = ({ venue }) => {
  const [isExpanded, setIsExpanded] = useState(false);

  const handleExpandClick = () => {
    setIsExpanded(!isExpanded);
  };

  return (
    <div className="venue">
      <img src={venue.image_url} alt={venue.name} />
      <div className="venue-info">
        <h2>{venue.name}</h2>
        <h4>{venue.city}</h4>
        {isExpanded && (
          <>
            <p>{venue.address}</p>
            <p>{venue.state}</p>
            <p>{venue.zipcode}</p>
            <p>{venue.phone}</p>
            <p>{venue.website_url}</p>
          </>
        )}
        <button onClick={handleExpandClick}>
          {isExpanded ? 'Collapse' : 'Expand'}
        </button>
      </div>
    </div>
  );
};

export default Venue;
