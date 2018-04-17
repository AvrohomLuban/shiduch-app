class ProfilesController < ApplicationController
  def new
    render "new.html.erb"
  end
  def index
    render "index.html.erb"
  end
  def create
    @profile = Profile.create(first_name: params[:first_name], last_name: params[:last_name], city: params[:city], gender: params[:gender], age: params[:age], description: params[:description], user_id: current_user.id, image: params[:image], resume: params[:resume])
    @usergroup = UserGroup.create(group_id: params[:group], user_id: current_user.id)
    redirect_to "/profiles/#{@profile.id}"
  end
  def show
    @profile = Profile.find_by(id: params[:id])
    render "show.html.erb"
  end
end
