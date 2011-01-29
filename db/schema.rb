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

ActiveRecord::Schema.define(:version => 20110129202424) do

  create_table "allocations", :force => true do |t|
    t.integer  "vlan_id"
    t.string   "range"
    t.integer  "subnet_id"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.text     "notes"
    t.string   "name"
    t.integer  "account_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.text     "notes"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", :force => true do |t|
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
    t.string   "message"
  end

  create_table "subnets", :force => true do |t|
    t.integer  "vlan_id"
    t.string   "range"
    t.string   "gateway"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vlans", :force => true do |t|
    t.integer  "vlan_number"
    t.integer  "location_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
