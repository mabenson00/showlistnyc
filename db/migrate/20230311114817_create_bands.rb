class CreateBands < ActiveRecord::Migration[7.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :links
      t.boolean :recommended

      t.timestamps
    end
  end
end
