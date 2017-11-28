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

ActiveRecord::Schema.define(version: 20171128135004) do

  create_table "contact_event_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_events", force: :cascade do |t|
    t.string "notes"
    t.datetime "scheduled_for"
    t.datetime "occurred_at"
    t.float "quality"
    t.integer "person_id"
    t.integer "contact_event_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_event_type_id"], name: "index_contact_events_on_contact_event_type_id"
    t.index ["person_id"], name: "index_contact_events_on_person_id"
  end

  create_table "contact_info_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_infos", force: :cascade do |t|
    t.string "content", null: false
    t.string "details"
    t.boolean "primary", null: false
    t.integer "person_id"
    t.integer "contact_info_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_info_type_id"], name: "index_contact_infos_on_contact_info_type_id"
    t.index ["person_id"], name: "index_contact_infos_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "nickname"
    t.float "priority", null: false
    t.integer "relationship_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relationship_type_id"], name: "index_people_on_relationship_type_id"
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
