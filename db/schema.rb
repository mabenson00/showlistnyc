# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_11_114821) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.text "links"
    t.boolean "recommended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_bands", force: :cascade do |t|
    t.bigint "show_id", null: false
    t.bigint "band_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_show_bands_on_band_id"
    t.index ["show_id"], name: "index_show_bands_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.datetime "date"
    t.text "details"
    t.boolean "recommended"
    t.bigint "venue_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_shows_on_venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "city"
    t.text "details"
    t.boolean "recommended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "show_bands", "bands"
  add_foreign_key "show_bands", "shows"
  add_foreign_key "shows", "venues"
end