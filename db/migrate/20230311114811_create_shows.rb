class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.datetime :date
      t.text :details
      t.boolean :recommended
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
