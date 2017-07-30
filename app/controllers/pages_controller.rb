class PagesController < ApplicationController
  before_action :check_sign_in, only: [:show]
  def show
    render template: "pages/#{params[:page]}"
  end
end
