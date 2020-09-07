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

ActiveRecord::Schema.define(version: 2020_09_07_161212) do

  create_table "poke_eggs", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.date "birth_day"
    t.string "region"
    t.string "state"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_poke_eggs_on_user_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "price_poke_egg"
    t.string "transport_type"
    t.integer "transport_time"
    t.date "date_arriving"
    t.integer "transport_price"
    t.integer "total_price"
    t.integer "user_id", null: false
    t.integer "poke_egg_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["poke_egg_id"], name: "index_purchases_on_poke_egg_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "region"
    t.text "experiences"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "poke_eggs", "users"
  add_foreign_key "purchases", "poke_eggs"
  add_foreign_key "purchases", "users"
end
