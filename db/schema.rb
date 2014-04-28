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

ActiveRecord::Schema.define(version: 20140427045729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: true do |t|
    t.string   "name",                           null: false
    t.string   "type",                           null: false
    t.string   "grouping_1",  default: "unused"
    t.string   "grouping_2",  default: "unused"
    t.string   "grouping_3",  default: "unused"
    t.string   "grouping_4",  default: "unused"
    t.string   "grouping_5",  default: "unused"
    t.string   "grouping_6",  default: "unused"
    t.string   "grouping_7",  default: "unused"
    t.string   "grouping_8",  default: "unused"
    t.string   "grouping_9",  default: "unused"
    t.string   "grouping_10", default: "unused"
    t.string   "grouping_11", default: "unused"
    t.string   "grouping_12", default: "unused"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "session_id",                     null: false
  end

  add_index "items", ["session_id"], name: "index_items_on_session_id", using: :btree

  create_table "sessions", force: true do |t|
    t.string   "name",                            null: false
    t.text     "description"
    t.string   "item_type",                       null: false
    t.string   "criterion_1",  default: "unused"
    t.string   "criterion_2",  default: "unused"
    t.string   "criterion_3",  default: "unused"
    t.string   "criterion_4",  default: "unused"
    t.string   "criterion_5",  default: "unused"
    t.string   "criterion_6",  default: "unused"
    t.string   "criterion_7",  default: "unused"
    t.string   "criterion_8",  default: "unused"
    t.string   "criterion_9",  default: "unused"
    t.string   "criterion_10", default: "unused"
    t.string   "criterion_11", default: "unused"
    t.string   "criterion_12", default: "unused"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
