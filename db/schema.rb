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

ActiveRecord::Schema.define(version: 2019_04_12_073606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.string "taskable_type"
    t.bigint "taskable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["taskable_type", "taskable_id"], name: "index_actions_on_taskable_type_and_taskable_id"
  end

  create_table "event_actions", id: false, force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "action_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_event_actions_on_action_id"
    t.index ["event_id"], name: "index_event_actions_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "object"
    t.string "state"
    t.json "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "send_email_tasks", force: :cascade do |t|
    t.string "mailer"
    t.json "emails"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_actions", "actions"
  add_foreign_key "event_actions", "events"
end
