class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def index 
      @myposts = current_user.posts.all
      render json: @myposts
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end