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

ActiveRecord::Schema.define(version: 20151019222606) do

  create_table "likes", force: true do |t|
    t.integer  "User_id"
    t.integer  "Post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "likes", ["Post_id"], name: "index_likes_on_Post_id"
  add_index "likes", ["User_id"], name: "index_likes_on_User_id"

  create_table "posts", force: true do |t|
    t.text     "post"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["User_id"], name: "index_posts_on_User_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
