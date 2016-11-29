class StepsController < ApplicationController
  def index
      @steps = @current_user.goals.steps
  end

  def show
    @step = Step.find_by :id => params[:id]

  end

  def new
    @goal = Goal.find params[:goal_id]
    @step = Step.new
  end

  def create
    @goal = Goal.find params[:goal_id]
    @step = @goal.steps.create step_params
    redirect_to @goal
  end

  def edit
    @goal = Goal.find params[:goal_id]
    @step = Step.find_by :id => params[:id]
  end

  def update
    @step = Step.find_by :id => params[:id]
    step.update step_params
    redirect_to "/steps/#{step.id}"
  end

  def destroy
    step = Step.find_by :id => params[:id]
    step.destroy

    redirect_to root_path()
  end

  private
  def step_params
    params.require(:step).permit(:name, :notes, :deadline, :reminder)
  end

end
