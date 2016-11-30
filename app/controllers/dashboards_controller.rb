class DashboardsController < ApplicationController
  def index
    @goals = Goal.all
    @all_goals = @current_user.goals
    @goal = Goal.find_by :id => params[:id]
  end

  def show
  end

  def new
  end

  def edit
  end
end
