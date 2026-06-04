class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  layout :layout_by_resource

  allow_browser versions: :modern

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])
  end

  private

  def layout_by_resource
    devise_controller? ? "auth" : "application"
  end
end
