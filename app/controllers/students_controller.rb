class PostsController < ApplicationController
  def new
    @student= Student.new
  end
  
  def create
    
    flash[:notice]= "You have successfully created #{name}."
    redirect_to root_url
  end
  
  def edit
    
    flash[:notice]= "You have successfully edited #{name}."
    redirect_to root_url
  end
end