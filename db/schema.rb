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
