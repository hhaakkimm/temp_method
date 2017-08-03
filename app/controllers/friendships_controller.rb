class FriendshipsController < ApplicationController
  
  def	create
		current_user.followuser(params[:friend_id])
    @friend = User.find(params[:friend_id])
    respond_to do |format|
      format.html { redirect_to users_path }
      format.js {}
    end
	end

	def	destroy
    current_user.unfollowuser(params[:friend_id])
    @friend = User.find(params[:friend_id])
    respond_to do |format|
      format.html { redirect_to users_path }
      format.js {}
    end
	end
end
