import React, { useEffect } from 'react';
import { observer } from 'mobx-react';

import Venue from './Venue';
import VenueStore  from '../../stores/VenuesStore';

const Venues = observer(() => {
  useEffect(() => {
    VenueStore.fetchVenues();
  }, []);



  const venues = VenueStore?.venues

  console.log(venues[0])
  return (
    <div>
      {/* {venues?.map((venue) => (
        <Venue key={venue.id} venue={venue} />
      ))} */}
    </div>
  );
});

export default Venues;
