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

ActiveRecord::Schema.define(version: 20151118105146) do

  create_table "comments", force: :cascade do |t|
    t.text     "text"
    t.integer  "user_id"
    t.integer  "publication_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "comments", ["publication_id"], name: "index_comments_on_publication_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "publications", force: :cascade do |t|
    t.string   "publication_type"
    t.string   "section"
    t.string   "title"
    t.text     "intro"
    t.text     "content"
    t.text     "summary"
    t.decimal  "grade"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_string"
  end

  add_index "publications", ["user_id"], name: "index_publications_on_user_id"

  create_table "reading_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "publication_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "reading_lists", ["publication_id"], name: "index_reading_lists_on_publication_id"
  add_index "reading_lists", ["user_id"], name: "index_reading_lists_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "tech_preference",    default: true
    t.boolean  "gadget_preference",  default: true
    t.boolean  "gaming_preference",  default: true
    t.boolean  "editor"
  end

end
