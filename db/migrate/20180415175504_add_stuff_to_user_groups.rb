class AddStuffToUserGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :user_groups, :requesting, :boolean
    add_column :user_groups, :approved, :boolean
    add_column :user_groups, :declined, :boolean
  end
end
