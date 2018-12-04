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

ActiveRecord::Schema.define(version: 2018_11_24_111322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", force: :cascade do |t|
    t.string "name"
    t.string "alias"
    t.string "type"
    t.boolean "active", default: true
    t.bigint "structure_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["structure_id"], name: "index_forms_on_structure_id"
    t.index ["user_id"], name: "index_forms_on_user_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "staff_no"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.string "id_no"
    t.string "mobile"
    t.string "gender"
    t.string "Marital_status"
    t.string "photo"
    t.string "id_copy"
    t.string "description"
    t.date "DOB"
    t.string "email"
    t.string "password_digest"
    t.string "auth_token"
    t.datetime "logintime"
    t.bigint "structure_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["structure_id"], name: "index_staffs_on_structure_id"
    t.index ["user_id"], name: "index_staffs_on_user_id"
  end

  create_table "structures", force: :cascade do |t|
    t.string "name"
    t.string "alias"
    t.string "type"
    t.string "ancestry"
    t.string "category"
    t.boolean "active", default: true
    t.integer "structure_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ancestry", "structure_id", "user_id"], name: "index_structures_on_ancestry_and_structure_id_and_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "forms", "structures"
  add_foreign_key "forms", "users"
  add_foreign_key "staffs", "structures"
  add_foreign_key "staffs", "users"
end
