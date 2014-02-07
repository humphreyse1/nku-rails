class SessionsController < ApplicationController
  def create
    student= Student.find(params[:id])
    if student.authenticate(params[:password])
      session[:id]= student.id
      redirect_to students_path
      end
  end
end