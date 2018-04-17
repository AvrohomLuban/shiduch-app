class DeleteUserIdFromUserAndMoreStuff < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :phone_number, :string
    remove_column :users, :location, :string
    remove_column :users, :requesting_to_join, :boolean
    remove_column :users, :approved_to_join, :boolean
  end
end
