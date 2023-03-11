import React, { useEffect, useState } from 'react';
import { observer } from 'mobx-react';
import { useParams } from 'react-router-dom';

import Venue from './Venue';
import VenueStore from '../../stores/VenuesStore';

const ViewVenue = observer(() => {
  const [venue, setVenue] = useState(null);
  const { id } = useParams();

  useEffect(() => {
    const fetchVenue = async () => {
      const data = await VenueStore.fetchVenue(id);
      setVenue(data);
    };
    fetchVenue();
  }, [id]);

  return (
    <div>
      {venue ? (
        <Venue venue={venue} />
      ) : (
        <p>Loading...</p>
      )}
    </div>
  );
});

export default ViewVenue;

