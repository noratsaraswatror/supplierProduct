class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :phone, :city, :country, :user_name,:role,:email, :password) }
    #devise_parameter_sanitizer.permit(:sign_up,keys: [:name, :phone, :city, :country, :user_name])
  end
end
