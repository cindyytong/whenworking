class CreateCoaches < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches do |t|
      t.string "email", null: false 
      t.string "password_digest", null: false 
      t.string "first_name", null: false 
      t.string "last_name", null: false 
      t.string "session_token", null: false 
      t.text "bio"
      t.string "degree"
      t.string "img_url"
      t.datetime "created_at", null: false 
      t.datetime "updated_at", null: false  

    end

    add_index :coaches, :email, unique: true 
    add_index :coaches, :session_token, unique: true 
    add_index :coaches, [:first_name, :last_name], unique: true
  end
end
