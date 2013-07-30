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

ActiveRecord::Schema.define(version: 20121210022846) do

  create_table "donations", force: true do |t|
    t.integer  "participation_id"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "message"
    t.string   "name"
    t.boolean  "is_message_private"
    t.boolean  "is_name_private"
    t.boolean  "is_amount_private"
    t.string   "email"
    t.boolean  "thank_you_sent"
  end

  create_table "events", force: true do |t|
    t.integer  "organization_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.date     "date"
    t.text     "thank_you_email"
    t.text     "solicit_email"
    t.string   "image_url"
    t.time     "time"
    t.string   "location"
  end

  create_table "follows", force: true do |t|
    t.integer  "volunteer_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offline_donations", force: true do |t|
    t.integer  "amount"
    t.string   "name"
    t.string   "donation_type"
    t.integer  "participation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_name_private"
    t.boolean  "is_amount_private"
    t.string   "email"
    t.boolean  "thank_you_sent"
  end

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "stripe_token"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "stripe_pub_key"
    t.string   "avatar_url"
    t.integer  "follows_count",   default: 0
  end

  create_table "participations", force: true do |t|
    t.integer  "volunteer_id"
    t.integer  "event_id"
    t.text     "note"
    t.integer  "goal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "volunteers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_url"
    t.string   "last_name"
    t.string   "bio"
  end

end
