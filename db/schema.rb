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

ActiveRecord::Schema[7.0].define(version: 2022_11_28_042058) do
  create_table "equipment", force: :cascade do |t|
    t.string "equipment_id"
    t.string "equipment_name"
    t.string "location"
    t.string "in_charge"
    t.integer "no_available"
    t.integer "no_in_use"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string "faculty_id"
    t.string "faculty_name"
    t.string "project_description"
    t.string "funding_organization"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_equipmets", force: :cascade do |t|
    t.string "username"
    t.string "equipment"
    t.integer "no_of_units"
    t.string "faculty_in_charge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "equipment_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.boolean "funded", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
