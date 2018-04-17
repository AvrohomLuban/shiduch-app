class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :city
      t.string :age
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
