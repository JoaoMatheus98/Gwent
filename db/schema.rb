# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_18_185331) do
  create_table "abilities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "associated_achievements", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "associated_quests", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "attack"
    t.string "url_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "faction_id"
    t.integer "combat_rows_id"
    t.integer "ability_id"
    t.integer "effect_id"
    t.index ["ability_id"], name: "index_cards_on_ability_id"
    t.index ["combat_rows_id"], name: "index_cards_on_combat_rows_id"
    t.index ["effect_id"], name: "index_cards_on_effect_id"
    t.index ["faction_id"], name: "index_cards_on_faction_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "country"
    t.string "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "combat_rows", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "effects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "color"
    t.string "url_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "npcs", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.boolean "uniqueCard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.integer "faction_id"
    t.index ["city_id"], name: "index_npcs_on_city_id"
    t.index ["faction_id"], name: "index_npcs_on_faction_id"
  end

  create_table "rules", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tips", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cards", "abilities"
  add_foreign_key "cards", "combat_rows", column: "combat_rows_id"
  add_foreign_key "cards", "effects"
  add_foreign_key "cards", "factions"
  add_foreign_key "npcs", "cities"
  add_foreign_key "npcs", "factions"
end
