import { makeObservable, observable, action } from 'mobx';
import axios from 'axios';

class VenuesStore {
  venues = [];

  constructor() {
    makeObservable(this, {
      venues: observable,
      addVenue: action,
      fetchVenues: action,
      setVenues: action,
    });
  }

  addVenue = async (venue) => {
    try {
      const response = await axios.post('/api/venues', { venue });
      const { data } = response;
      this.venues.push(data);
    } catch (error) {
      console.error('Error adding venue:', error);
    }
  }

  fetchVenues = async () => {
    try {
      const response = await axios.get('/api/venues');
      const { data } = response;
      this.setVenues(data);
    } catch (error) {
      console.error('Error fetching venues:', error);
    }
  }

  setVenues = (venues) => {
    this.venues = venues;
  }
}

const VenueStore = new VenuesStore();
export default VenueStore;
