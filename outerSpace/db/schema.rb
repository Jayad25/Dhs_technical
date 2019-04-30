# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_30_165321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ships", force: :cascade do |t|
    t.string "name", null: false
    t.integer "velocity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "system_id"
    t.index ["name"], name: "index_ships_on_name"
    t.index ["velocity"], name: "index_ships_on_velocity"
  end

  create_table "systems", force: :cascade do |t|
    t.string "name", null: false
    t.integer "radius", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_systems_on_name"
    t.index ["radius"], name: "index_systems_on_radius"
  end

end
