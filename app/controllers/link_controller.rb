class LinkController < ApplicationController
  
  def create
    Link.new(params[:link])
  end
  
end
