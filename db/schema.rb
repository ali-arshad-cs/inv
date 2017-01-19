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

ActiveRecord::Schema.define(version: 20170119193147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cpus", force: :cascade do |t|
    t.string   "harddisk"
    t.string   "brand_name"
    t.string   "cpu_processor"
    t.string   "ram"
    t.string   "cd_rom"
    t.string   "usb_port"
    t.string   "vga_card"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "cpu_code"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.text     "mouse"
    t.text     "keyboard"
    t.string   "led"
    t.string   "cpu_code"
    t.text     "mouse_pad"
    t.text     "ip_phone"
    t.text     "headphone"
    t.string   "vga_card"
    t.text     "laptop"
    t.string   "camera"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
    t.text     "description"
    t.integer  "extension"
    t.text     "department"
  end

  create_table "items", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "product_model_number"
    t.string   "vendor_part_number"
    t.string   "vendor_name"
    t.integer  "quantity"
    t.decimal  "unit_value"
    t.decimal  "value"
    t.string   "picture"
    t.text     "vendor_url"
    t.text     "category"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
