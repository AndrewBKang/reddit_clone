class SessionsController < ApplicationController
  
  skip_before_filter :authenticate, only: [:new,:create]
  
  def new
    redirect_to current_user, notice: "already logged in" if logged_in?
  end
  
  def create
    @user = User.find_by_username(params[:user][:username])
    if BCrypt::Password.new(@user.password_digest) == params[:user][:password]
      login(@user)
      redirect_to @user
    else
      @name = params[:user][:username]
      render :new, alert: "bad username/password"
    end
  end
  
  def destroy
    current_user.session_token = nil
    current_user.save!
    session[:session_token] = nil
    redirect_to new_session_url, notice: "logged out"
  end
  
end
