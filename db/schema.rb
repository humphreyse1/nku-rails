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

ActiveRecord::Schema.define(version: 20140307214150) do

  create_table "assignments", force: true do |t|
    t.integer "score"
    t.integer "total"
  end

  create_table "attendances", force: true do |t|
    t.date    "attended_on"
    t.integer "seat"
    t.integer "student_id"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string "name"
    t.string "nickname"
    t.string "email"
    t.string "image_url"
    t.string "password"
    t.string "passwordConfirm"
    t.string "password_digest"
  end

end
