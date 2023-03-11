import React from 'react';
import { useForm } from 'react-hook-form';
import { observer } from 'mobx-react';

const VenueForm = observer(({ onSubmit }) => {
  const { register, handleSubmit, errors } = useForm();

  return (
    <form onSubmit={handleSubmit(onSubmit)}>
      <div>
        <label htmlFor="name">Name</label>
        <input type="text" name="name" ref={register} />
        {errors?.name && <span>This field is required</span>}
      </div>
      <div>
        <label htmlFor="website">Website</label>
        <input type="text" name="website" ref={register} />
      </div>
      <div>
        <label htmlFor="city">City</label>
        <input type="text" name="city" ref={register} />
        {errors?.city && <span>This field is required</span>}
      </div>
      <div>
        <label htmlFor="details">Details</label>
        <textarea name="details" ref={register} />
      </div>
      <div>
        <label htmlFor="recommended">Recommended</label>
        <input type="checkbox" name="recommended" ref={register} />
      </div>
      <div>
        <label htmlFor="street">Street</label>
        <input type="text" name="street" ref={register} />
      </div>
      <div>
        <label htmlFor="state">State</label>
        <input type="text" name="state" ref={register} />
      </div>
      <div>
        <label htmlFor="zip_code">Zip Code</label>
        <input type="text" name="zip_code" ref={register} />
      </div>
      <button type="submit">Submit</button>
    </form>
  );
});

export default VenueForm;
