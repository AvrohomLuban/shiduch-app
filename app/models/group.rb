class Group < ApplicationRecord
  has_many :user_groups
  has_many :users, through: :user_groups
  def leader_name
    @leader_id = leader
    @user = User.find_by(id: @leader_id)
    @first_name = @user.first_name 
    @last_name = @user.last_name
    @leader_name = @first_name + " " + @last_name
    return @leader_name
  end
end
