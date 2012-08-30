class HomesController < ApplicationController
  def index
    @sprints = Sprint.order("number ASC")
  end

  def new
    @sprints = Sprint.order("number ASC")
    @user = User.new
    @team = TeamMember.order("last_name")
    @roles = Role.order("name")
  end

  def create
    sprint = Sprint.find(params[:user][:sprint_id])
    user = User.create(name: params[:user][:name], role: params[:user][:role], percent: params[:user][:percent])

    sprint.users << user

    redirect_to new_home_path, :notice => "Success!"
  end

  def show
  end
end
