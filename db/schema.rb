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

ActiveRecord::Schema.define(version: 20160308081805) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "outline"
  end

  create_table "musics", force: :cascade do |t|
    t.integer "artist_id"
    t.string  "title"
    t.string  "outline"
  end

  create_table "playlist_details", force: :cascade do |t|
    t.string  "playlist_name"
    t.integer "number"
    t.integer "music_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.string "outline"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "prefecture"
    t.string "prefecture_ruby"
    t.string "capital"
    t.string "capital_ruby"
  end

end
