class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user = User.new(user_params)
    user.save
    redirect_to homes_path
  end
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to homes_path
  end

  private
  def user_params
    params/require(:user).permit(:name, :profile_image, :caption)
  end
end

