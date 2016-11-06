class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :full_name, :title, :education, :specialty, :target_salary, :profile_picture, :resume, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :full_name, :title, :education, :specialty, :target_salary, :profile_picture, :resume, :role])
  end

end
