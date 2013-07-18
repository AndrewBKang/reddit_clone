class SubsController < ApplicationController
  
  def new
    @params = {}
  end
  
  def create
    @sub = current_user.subs.build(params[:sub])
    if @sub.save
      redirect_to @sub
    else
      @params = params[:sub][:links_attributes]
      render :new, alert: "bad sub"
    end
  end
  
  def show
    @sub = Sub.find(params[:id])
  end
  
  private
  
  def admin_id
    @admin_id = current_user.id
  end
  
end
