class HomesController < ApplicationController
  def index
  end

  def new
    @sprints = Sprint.order("number ASC")
    @user = User.new
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
