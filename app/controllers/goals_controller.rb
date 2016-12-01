class GoalsController < ApplicationController
  def index
    unless @current_user.present?
      @goals = Goal.all
    else
      @goals = @current_user.goals
    end
  end

  def show
    @goal = Goal.find_by :id => params[:id]
    @goal_steps = @goal.steps.order(:created_at)
    @new_step = @goal.steps.new

  end

  def new
    @goal = Goal.new
  end

  def create
    # @goal = Goal.create goal_params
    @goal = @current_user.goals.create goal_params
    redirect_to new_goal_step_path(@goal)
  end

  def edit
    @goal = Goal.find_by :id => params[:id]
  end


  def update
    goal = Goal.find_by :id => params[:id]
    goal.update goal_params
    redirect_to "/goals/#{goal.id}"
  end

  def destroy
    goal = Goal.find_by :id => params[:id]
    goal.destroy

    redirect_to goals_path
  end


  private
  def goal_params
    params.require(:goal).permit(:name, :categories, :deadline, :image, :reward, :user_id)
  end

end
