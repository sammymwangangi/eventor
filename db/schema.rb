# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20200214100100) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "event_bookings", force: :cascade do |t|
    t.integer  "event_id",    limit: 4
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.float    "total_price", limit: 24
    t.integer  "tickets",     limit: 4
  end

  create_table "event_categories", force: :cascade do |t|
    t.integer  "event_id",    limit: 4
    t.integer  "category_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.text     "description",    limit: 65535
    t.integer  "venue_id",       limit: 4
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.float    "entry_fee",      limit: 24
    t.string   "status",         limit: 255
    t.integer  "locality_id",    limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "user_id",        limit: 4
    t.integer  "tickets_left",   limit: 4
    t.string   "avatar",         limit: 255
  end

  create_table "localities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "city_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "role_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "service_bookings", force: :cascade do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.integer  "service_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.float    "price",      limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venue_bookings", force: :cascade do |t|
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.integer  "venue_id",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "event_id",       limit: 4
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.float    "price",      limit: 24
    t.text     "address",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",     limit: 4
    t.integer  "locality_id", limit: 4
    t.integer  "seats",       limit: 4
    t.string   "avatar",      limit: 255
  end

end
