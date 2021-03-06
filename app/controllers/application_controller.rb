class ApplicationController < ActionController::Base
  include Pagy::Backend
  protect_from_forgery

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
  helper_method :current_user
end
