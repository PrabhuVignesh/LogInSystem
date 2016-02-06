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

ActiveRecord::Schema.define(version: 20160123171653) do

  create_table "blockings", force: :cascade do |t|
    t.integer  "block_category"
    t.integer  "block_type"
    t.integer  "blocked_by"
    t.string   "block_param"
    t.boolean  "current_status"
    t.text     "reason"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "login_attempts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "ip_address"
    t.string   "country_name"
    t.string   "city_name"
    t.string   "real_region_name"
    t.boolean  "success"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role_name"
    t.integer  "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.integer  "assigned_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "remember_digest"
    t.string   "activation_digest"
    t.boolean  "activated"
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean  "blocked"
    t.datetime "blocked_at"
  end

end
