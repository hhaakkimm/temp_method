class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar, :contact, :name, :about, :email, :password, :remember_me, :check)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :contact, :name, :about, :email, :password, :remember_me, :current_password)}
  end

  def check_sign_in
    redirect_to new_user_session_url unless signed_in?
  end
end
