class GroupsController < ApplicationController
  def new
    render "new.html.erb"
  end

  def join
    @usergroup = UserGroup.create(group_id: params[:group], user_id: current_user.id, requesting: true)
    redirect_to "/"
  end

  def create
    @group = Group.create(name: params[:name], leader: current_user.id)
    @usergroup = UserGroup.create(group_id: @group.id, user_id: current_user.id, approved: true)
    render "show.html.erb"
  end

  def show
    @group = Group.find_by(id: params[:id])
    render "show.html.erb"
  end

  def index
    @groups = Group.all
    render "index.html.erb"
  end
end
