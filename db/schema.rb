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

ActiveRecord::Schema.define(version: 2018_07_26_150836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "permissions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "granted_to"
    t.uuid "given_by"
    t.hstore "permissions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "uuid"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "uuid"
    t.string "name"
    t.string "given_name"
    t.string "family_name"
    t.string "nickname"
    t.string "preferred_username"
    t.string "profile"
    t.string "picture"
    t.string "website"
    t.string "email"
    t.boolean "email_verified"
    t.string "gender"
    t.string "birthdate"
    t.string "zoneinfo"
    t.string "locale"
    t.string "phone_number"
    t.boolean "phone_number_verified"
    t.json "address"
    t.text "public_key"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
