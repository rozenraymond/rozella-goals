class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find_by :id => params[:id]
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new user_params
  end

  def edit
    @goal = Goal.find_by :id => params[:id]
  end

  def update
    @goal = Goal.find_by :id => params[:id]
  end

  def destroy
    goal = Goal.find_by :id => params [:id]
    goal.destroy

    redirect_to root_path()
  end

  private
  def user_params
    params.require(:goal).permit(:name, :categories)
  end

end
