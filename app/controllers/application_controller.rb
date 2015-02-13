class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :determine_layout

  helper_method :is_admin?
  def is_admin?
    current_user.try(:admin)
  end

  private

  def determine_layout
    return 'login' if params[:controller] == 'admin'
    is_admin? ? 'admin' : 'application'
  end
end
