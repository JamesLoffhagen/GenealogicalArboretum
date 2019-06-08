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

ActiveRecord::Schema.define(version: 2019_06_08_231405) do

  create_table "education_field_types", force: :cascade do |t|
    t.string "education_field_type_name"
    t.string "education_field_type_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "education_types", force: :cascade do |t|
    t.string "education_type_name"
    t.string "education_type_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_condition_types", force: :cascade do |t|
    t.string "health_condition_type_name"
    t.string "health_condition_type_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individuals", force: :cascade do |t|
    t.string "name_last"
    t.string "name_first"
    t.string "name_middle"
    t.string "name_maiden"
    t.string "name_familiar"
    t.string "gender"
    t.datetime "date_birth"
    t.datetime "date_death"
    t.string "place_birth"
    t.string "cause_death"
    t.text "misc_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "object_types", force: :cascade do |t|
    t.string "object_type_name"
    t.string "object_type_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupation_types", force: :cascade do |t|
    t.string "occupation_type_name"
    t.string "occupation_type_description"
    t.string "occupation_type_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parent_types", force: :cascade do |t|
    t.string "parent_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.integer "individual_id"
    t.integer "parent_id"
    t.integer "parent_type_id"
    t.text "parent_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["individual_id"], name: "index_parents_on_individual_id"
    t.index ["parent_id"], name: "index_parents_on_parent_id"
    t.index ["parent_type_id"], name: "index_parents_on_parent_type_id"
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string "relationship_type_name"
    t.string "relationship_type_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_types", force: :cascade do |t|
    t.string "role_type_name"
    t.string "role_type_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
