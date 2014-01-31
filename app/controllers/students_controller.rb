class StudentsController < ApplicationController
  def new
    @student= Student.new
  end
  
  def create
    @student= Student.new(params[:post])
    flash[:notice]= "You have successfully created #{name}."
    redirect_to root_url
  end
  
  def edit
    @student= Student.find(params[:id])
    flash[:notice]= "You have successfully edited #{name}."
    redirect_to root_url
  end
  
  #get gravatar image
  if @student.image= nil
    @student.image= "http://www.gravatar.com/avatar"
    if @student.email != nil
      require 'digest/md5'
      hash= Digest::MD5.hexdigest(@student.email)
      @student.image= "http://www.gravatar.com/avatar/#{hash}"
    end
  end
end