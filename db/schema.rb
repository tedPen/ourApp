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

ActiveRecord::Schema.define(:version => 20130413215648) do

  create_table "feedbacks", :force => true do |t|
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "meal_meetings", :force => true do |t|
    t.string   "title"
    t.text     "interests"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.datetime "time"
  end

  create_table "profiles", :force => true do |t|
    t.string   "username"
    t.string   "real_name"
    t.string   "profile_pic"
    t.text     "interests"
    t.string   "major"
    t.integer  "year"
    t.boolean  "student"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "schedules", :primary_key => "user_id", :force => true do |t|
    t.string   "meal"
    t.string   "place_mrups"
    t.string   "place_fireice"
    t.string   "place_pizza"
    t.string   "place_dhall"
    t.string   "question1"
    t.string   "question2"
    t.string   "question3"
    t.string   "question4"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "question5"
    t.string   "place_sabai"
    t.string   "name"
    t.integer  "year"
  end

  create_table "sus", :force => true do |t|
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.integer  "q5"
    t.integer  "q6"
    t.integer  "q7"
    t.integer  "q8"
    t.integer  "q9"
    t.integer  "q10"
    t.integer  "score"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
