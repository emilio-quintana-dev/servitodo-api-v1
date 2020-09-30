# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_04_192152) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "professional_id"
    t.string "status", default: "Pending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professionals", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "img_url"
    t.integer "times_hired", default: 0
    t.integer "time_in_bussiness", default: 0
    t.string "introduction"
    t.integer "category_id"
    t.integer "zip_code"
    t.integer "average_reviews", default: 0
    t.integer "estimated_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.integer "rating"
    t.integer "job_id"
    t.integer "user_id"
    t.integer "professional_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "zip_code"
    t.string "img_url", default: "https://robohash.org/rerumetmagnam.png?size=300x300&set=set1"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
