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

ActiveRecord::Schema.define(version: 20130919134633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enrolments", force: true do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrolments", ["student_id"], name: "index_enrolments_on_student_id", using: :btree
  add_index "enrolments", ["subject_id"], name: "index_enrolments_on_subject_id", using: :btree

  create_table "payments", force: true do |t|
    t.decimal  "amount"
    t.string   "paid_for_month"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["student_id"], name: "index_payments_on_student_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "registration_number"
    t.string   "email"
    t.string   "mobile"
    t.string   "school"
    t.decimal  "tuition_fee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "fee"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
