class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :logged_in?, :current_user
  
  def logged_in?
    !!current_user
  end
  
  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  
end
