class HomesController < ApplicationController
  def index
  end

  def new
    @sprints = Sprint.order("number ASC")
    @user = User.new
  end

  def create
  end

  def show
  end
end
