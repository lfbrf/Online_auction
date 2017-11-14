class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource
  protected
  def layout_by_resource
    if devise_controller?
      if resource_name == :user && ["edit", "update"].include?(action_name)
        "users/layouts/application"
      elsif resource_name == :admin
        "admins/layouts/application"
      else
        "devise/sessions/new"
      end
    else
      "layouts/application"
    end
  end

  def configure_permitted_parameters
  	
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :city, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])

  end
  def create
        redirect_to new_user_session_path, alert: "Invalid email or password"
    end  

end
