class SessionsController < ApplicationController
  
  def new
    redirect_to current_user if logged_in?
  end
  
  def create
    
  end
  
  def destroy
    
  end
  
end
