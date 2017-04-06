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

ActiveRecord::Schema.define(version: 20170318223341) do

  create_table "buildings", force: :cascade do |t|
    t.string   "name"
    t.integer  "campus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campus_id"], name: "index_buildings_on_campus_id"
  end

  create_table "campuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_days", force: :cascade do |t|
    t.integer "course_id"
    t.integer "day_id"
    t.time    "start"
    t.time    "end"
    t.index ["course_id"], name: "index_course_days_on_course_id"
    t.index ["day_id"], name: "index_course_days_on_day_id"
  end

  create_table "course_schedules", force: :cascade do |t|
    t.boolean "registered",  default: false
    t.integer "course_id"
    t.integer "schedule_id"
    t.index ["course_id"], name: "index_course_schedules_on_course_id"
    t.index ["schedule_id"], name: "index_course_schedules_on_schedule_id"
  end

  create_table "course_students", force: :cascade do |t|
    t.integer "course_id"
    t.integer "student_id"
    t.index ["course_id"], name: "index_course_students_on_course_id"
    t.index ["student_id"], name: "index_course_students_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "course_number"
    t.string   "room_number"
    t.string   "section"
    t.float    "credits"
    t.integer  "subject_id"
    t.integer  "building_id"
    t.integer  "instructor_id"
    t.integer  "semester_id"
    t.integer  "status_id"
    t.integer  "campus_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["building_id"], name: "index_courses_on_building_id"
    t.index ["campus_id"], name: "index_courses_on_campus_id"
    t.index ["instructor_id"], name: "index_courses_on_instructor_id"
    t.index ["semester_id"], name: "index_courses_on_semester_id"
    t.index ["status_id"], name: "index_courses_on_status_id"
    t.index ["subject_id"], name: "index_courses_on_subject_id"
  end

  create_table "days", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "semester_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["semester_id"], name: "index_schedules_on_semester_id"
    t.index ["student_id"], name: "index_schedules_on_student_id"
  end

  create_table "semesters", force: :cascade do |t|
    t.integer  "year"
    t.string   "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "is_admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "campus_id"
    t.index ["campus_id"], name: "index_students_on_campus_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
