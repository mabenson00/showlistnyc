class AddAddressFieldsToVenues < ActiveRecord::Migration[7.0]
  def change
    change_table :venues, bulk: true do |t|
      t.string :street
      t.string :state
      t.string :zip_code
    end
  end
end
