class AddRequestingToJoinToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :requesting_to_join, :boolean, default: false
  end
end
