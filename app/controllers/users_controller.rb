class UsersController < ApplicationController
  def index
    @users = User.where(["name LIKE ?","%#{params[:search]}"])
  end
  def show
    @user	=	User.find(params[:id])
  end
end
