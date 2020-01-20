class ChangeOverAge13Type < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :over_age_13, :string
    add_column :users, :over_age_13, :boolean
  end
end
