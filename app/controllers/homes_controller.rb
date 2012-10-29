class HomesController < ApplicationController
  def index
    @sprints = Sprint.order("number DESC")
  end

  def new
    @sprints = Sprint.order("number ASC")
    @user = User.new
    @team = TeamMember.order("last_name")
    @roles = Role.order("name")
  end

  def create
    @sprint = Sprint.find(params[:user][:sprint_id])
    @user = User.create(name: params[:user][:name], role: params[:user][:role], percent: params[:user][:percent])

    @sprint.users << @user
    
    if @user.errors.any?
      @notice = "Failed to add #{params[:user][:name]} to sprint #{@sprint.number}."
    else
      @notice = "Added #{params[:user][:name]} to sprint #{@sprint.number}."
    end
    
    redirect_to new_home_path, :notice => @notice
  end

  def show
    @sprint = Sprint.find(params[:id])
  end
  
  def edit
    @sprint = User.find(params[:id])
  end
end
