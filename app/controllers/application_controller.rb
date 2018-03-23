class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: 
    [:first_name, :last_name, :citizen_id, :role, :instructor_id, :department_name, :student_id])
  end
end
