class FixUserId < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :user_id, :integer
    add_column :profiles, :user_id, :integer
  end
end
