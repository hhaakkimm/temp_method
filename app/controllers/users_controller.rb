class UsersController < ApplicationController
  before_action :check_sign_in, only: [:show, :index, :my_friends]
  def index
    @users = User.where(["name LIKE ?","%#{params[:search]}"])
  end
  def show
    @user	=	User.find(params[:id])
  end
  def my_friends
    @friends = User.all
  end
end
