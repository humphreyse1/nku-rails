class PostsController < ApplicationController
  def new
    @student= Student.new
  end
  
  #methods go in controllers (?)
end