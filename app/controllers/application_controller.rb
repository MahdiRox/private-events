require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
#   before_action :configure_permitted_parameters, if: :devise_controller?
# protected
# def configure_permitted_parameters
#  devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email])
#  devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :email])
#  devise_parameter_sanitizer.permit(:account_update, keys: [:username])
# end
end
