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

ActiveRecord::Schema.define(:version => 20120425115809) do

  create_table "forum_link_watsup_links", :force => true do |t|
    t.integer  "forum_link_id"
    t.integer  "watsup_link_id"
    t.float    "probability"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "forum_link_watsup_links", ["forum_link_id"], :name => "index_forum_link_watsup_links_on_forum_link_id"
  add_index "forum_link_watsup_links", ["watsup_link_id"], :name => "index_forum_link_watsup_links_on_watsup_link_id"

  create_table "forum_links", :force => true do |t|
    t.string   "path"
    t.string   "text"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "forumticket"
  end

  create_table "watsup_links", :force => true do |t|
    t.string   "path"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "ip_address"
  end

end
