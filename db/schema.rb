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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121026144415) do

  create_table "editions", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "witness_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "editions", ["title"], :name => "index_editions_on_title"

  create_table "openings", :force => true do |t|
    t.text     "running_title"
    t.text     "verso"
    t.text     "recto"
    t.integer  "verso_page_number"
    t.integer  "recto_page_number"
    t.text     "verso_notes"
    t.text     "recto_notes"
    t.integer  "witness_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "openings", ["recto_page_number"], :name => "index_openings_on_recto_page_number"
  add_index "openings", ["running_title"], :name => "index_openings_on_running_title"
  add_index "openings", ["verso_page_number"], :name => "index_openings_on_verso_page_number"

  create_table "witnesses", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.string   "pub_place"
    t.integer  "year"
    t.string   "code"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "witnesses", ["code"], :name => "index_witnesses_on_code"
  add_index "witnesses", ["year"], :name => "index_witnesses_on_year"

end
