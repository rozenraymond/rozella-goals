class DashboardsController < ApplicationController
  def index
    # @goals = Goal.all
    @following = @current_user.following
    # @user_goals = @current_user.goals
    # @goal = Goal.find_by :id => params[:id]
    @following_ids = @following.pluck(:id)
    @all_goals = Goal.where(:user_id => @current_user.id)

    @following.each do |followee|
      followee.goals.each do |goal|
        @all_goals << goal
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def search
    @all_goals = []
    # @goals = Goal.all
    @following = @current_user.following
    # @user_goals = @current_user.goals
    # @goal = Goal.find_by :id => params[:id]
    @following_ids = @following.pluck(:id)
    @pre_goals = Goal.where(:user_id => @current_user.id)

    @following.each do |followee|
      followee.goals.each do |goal|
        @pre_goals << goal
      end
    end

    @pre_goals.each do |goal|
      if goal.categories.present? && params[:search].present?
        if goal.categories.include? params[:search]
          @all_goals << goal
        end

      else
        @all_goals = @current_user.goals
      end

    end









    @following = @current_user.following
    @user_goals = []
    @following_goals = []

    @all_type_of_goals = [];

    @goals = @current_user.goals
    @goals.all.each do |goal|
      if goal.categories.present? && params[:search].present?
        if goal.categories.include? params[:search]
          @user_goals << goal
        end

      else
        @user_goals = @current_user.goals
      end
    end

    render :index
  end



end
