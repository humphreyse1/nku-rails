class PostsController < ApplicationController
  def new
    @student= Student.new
  end
  
  def create
    @student= Student.new(params[:post]
    flash[:notice]= "You have successfully created #{name}."
    redirect_to root_url
  end
  
  def edit
    @student= Student.find(params[:id])
    flash[:notice]= "You have successfully edited #{name}."
    redirect_to root_url
  end
end