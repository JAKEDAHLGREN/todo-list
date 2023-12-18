

ActiveRecord::Schema[7.1].define(version: 2023_12_18_001247) do
  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.datetime "due_date"
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
