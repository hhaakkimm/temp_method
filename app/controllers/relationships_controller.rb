class RelationshipsController < ApplicationController

	def	create
		current_user.follow(params[:project_id])
    @project = Project.find(params[:project_id])
    respond_to do |format|
      format.html { redirect_to projects_path }
      format.js {}
    end
	end
	def	destroy
    current_user.unfollow(params[:project_id])
    @project = Project.find(params[:project_id])
    respond_to do |format|
      format.html { redirect_to projects_path }
      format.js {}
    end
	end
end
