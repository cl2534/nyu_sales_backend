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

ActiveRecord::Schema.define(version: 2018_09_10_200332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id"
    t.bigint "sale_post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_post_id"], name: "index_comments_on_sale_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "post_categories", force: :cascade do |t|
    t.bigint "sale_post_id"
    t.bigint "sale_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_category_id"], name: "index_post_categories_on_sale_category_id"
    t.index ["sale_post_id"], name: "index_post_categories_on_sale_post_id"
  end

  create_table "sale_categories", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sale_posts", force: :cascade do |t|
    t.text "name"
    t.text "picture_url"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sale_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
