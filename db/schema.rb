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

ActiveRecord::Schema.define(:version => 20130308021415) do

  create_table "farmers", :force => true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.string   "sex"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "farmer_number"
    t.integer  "lgid"
  end

  create_table "gpfs", :force => true do |t|
    t.integer  "cbcount"
    t.integer  "lbcount"
    t.integer  "litres"
    t.decimal  "fat"
    t.decimal  "price"
    t.decimal  "litconsume"
    t.decimal  "litgive"
    t.decimal  "litsell"
    t.integer  "farmer_id"
    t.string   "whoconsa"
    t.string   "whoconsb"
    t.string   "wheresell"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.integer  "lgid"
    t.integer  "phase"
    t.string   "district"
    t.string   "upazilla"
    t.integer  "totalpart"
    t.integer  "perfemale"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "orgname"
    t.string   "email"
    t.string   "usertype"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "visuals", :force => true do |t|
    t.string   "vizname"
    t.string   "topic"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
