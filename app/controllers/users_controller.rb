class UsersController < ApplicationController

  before_action :authorise, :only => [:edit, :update]

  def index
    @current_user = User.find_by :id => session[:user_id]
    @users = User.all
  end

  def show
    @user = User.find_by :id => params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update (user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    user = @current_user
    user.destroy
    redirect_to root_path()
  end


  private

  def user_params
    params.required(:user).permit(:email, :name, :password, :password_confirmation)
  end

  def authorise
    unless @current_user.present?
      flash[:error] = "You need to be logged in to do that"
      redirect_to login_path()
    end
  end


end