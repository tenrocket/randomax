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

ActiveRecord::Schema.define(version: 20140430195927) do

  create_table "askers", force: true do |t|
    t.string "user_name"
    t.string "address"
    t.string "email"
  end

  create_table "gifts", force: true do |t|
    t.string  "name"
    t.string  "description"
    t.integer "price"
  end

  create_table "givers", force: true do |t|
    t.string "user_name"
    t.string "address"
    t.string "email"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "message"
    t.date     "due_date"
    t.integer  "asker_id"
    t.integer  "giver_id"
    t.integer  "gift_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end