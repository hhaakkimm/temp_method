class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar,:username, :contact, :name, :about, :email, :password, :remember_me, :check)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar,:username, :contact, :name, :about, :email, :password, :remember_me, :current_password)}
  end
  
  def check_sign_in
    redirect_to new_user_session_url unless signed_in?
  end
end
