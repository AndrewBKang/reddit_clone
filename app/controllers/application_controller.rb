class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include SessionsHelper
  
  before_filter :authenticate
  
  def authenticate
    redirect_to new_session_url unless logged_in?
  end
  
end
