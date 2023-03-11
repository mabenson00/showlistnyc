class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :website
      t.string :city
      t.text :details
      t.boolean :recommended

      t.timestamps
    end
  end
end
