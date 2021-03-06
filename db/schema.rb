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

ActiveRecord::Schema.define(version: 20160322011734) do

  create_table "background_words", force: :cascade do |t|
    t.integer  "background_id"
    t.integer  "word_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "background_words", ["background_id"], name: "index_background_words_on_background_id"
  add_index "background_words", ["word_id"], name: "index_background_words_on_word_id"

  create_table "backgrounds", force: :cascade do |t|
    t.string   "titulo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "image_words", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "image_id"
    t.integer  "word_id"
  end

  add_index "image_words", ["image_id"], name: "index_image_words_on_image_id"
  add_index "image_words", ["word_id"], name: "index_image_words_on_word_id"

  create_table "images", force: :cascade do |t|
    t.string   "titulo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "tipo"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "scene_images", force: :cascade do |t|
    t.integer  "scene_id"
    t.integer  "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "scene_images", ["image_id"], name: "index_scene_images_on_image_id"
  add_index "scene_images", ["scene_id"], name: "index_scene_images_on_scene_id"

  create_table "scenes", force: :cascade do |t|
    t.string   "titulo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "story_id"
    t.integer  "background_id"
  end

  add_index "scenes", ["background_id"], name: "index_scenes_on_background_id"
  add_index "scenes", ["story_id"], name: "index_scenes_on_story_id"

  create_table "stories", force: :cascade do |t|
    t.string   "titulo"
    t.string   "autor"
    t.boolean  "hombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "palabra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
