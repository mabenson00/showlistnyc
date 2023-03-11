class CreateShowBands < ActiveRecord::Migration[7.0]
  def change
    create_table :show_bands do |t|
      t.references :show, null: false, foreign_key: true
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
