class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string "email", null: false 
      t.string "password_digest", null: false 
      t.string "first_name", null: false 
      t.string "last_name", null: false 
      t.string "over_age_13", null: false 
      t.string "session_token", null: false 
      t.integer "current_coach_id"
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false  
      t.text "goals"
      t.integer "coach_match_ids", default: [], array: true
    end

    add_index :users, :email, unique: true 
    add_index :users, :session_token, unique: true 
    add_index :users, [:first_name, :last_name], unique: true
  end
end
