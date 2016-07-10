class UserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(user_params)
    @user.save
  end

  # PATCH/PUT /users/1
  def update
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
