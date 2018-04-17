class ChangeDefaultOfRequestingToJoin < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :requesting_to_join, :boolean, default: true
  end
end
