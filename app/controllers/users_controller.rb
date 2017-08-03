class UsersController < ApplicationController
  before_action :check_sign_in, only: [:show, :index]
  def index
    @users = User.where(["name LIKE ?","%#{params[:search]}"])
  end
  def show
    @user	=	User.find(params[:id])
  end
  def my_friends
    @friends = User.all
  end
  def requset
    @friends = User.all
  end
end
