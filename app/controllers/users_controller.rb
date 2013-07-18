class UsersController < ApplicationController
  
  skip_before_filter :authenticate, only: [:new,:create]
  
  def new
    @params = {}
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      login(@user)
      redirect_to @user, notice: "welcome to reddit"
    else
      @params = params[:user]
      render :new, alert: "try again"
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
end