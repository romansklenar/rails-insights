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

ActiveRecord::Schema.define(version: 20150414143042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "homepage_url"
    t.string   "homepage_domain"
    t.string   "logo_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "portals", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "company_id"
    t.integer  "portal_id"
    t.string   "title"
    t.text     "description_html"
    t.text     "description_text"
    t.text     "how_to_apply"
    t.string   "url"
    t.string   "location"
    t.string   "salary"
    t.string   "state"
    t.string   "kind"
    t.string   "type"
    t.datetime "posted_at"
    t.datetime "synchronized_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "positions", ["company_id"], name: "index_positions_on_company_id", using: :btree
  add_index "positions", ["portal_id"], name: "index_positions_on_portal_id", using: :btree

  add_foreign_key "positions", "companies"
  add_foreign_key "positions", "portals"
end
