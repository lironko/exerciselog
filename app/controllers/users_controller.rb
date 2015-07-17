class UsersController < ApplicationController
  
  # GET /users
  def index
    @users = User.all
  end
  
  # GET /workouts/1
  def show
    @user = User.find(params[:id])
  end
  
end
