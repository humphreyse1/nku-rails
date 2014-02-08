class StudentsController < ApplicationController
  def new
    @student= Student.new
  end
  
  def create
    @student= Student.create!(student_params)
    session[:id]= @student.id
    flash[:notice]= "You have successfully created #{@student.name}."
    redirect_to students_path
  end
  
  def edit
    @student= Student.find(params[:id])
  end
  
  def update
    @student= Student.find(params[:id])
    @student.update_attributes!(student_params)
    redirect_to students_path, notice: "Successfully updated #{@student.name}"
  end
  
  def index
    @students= Student.all
  end
  
  private
  def student_params
    params.require(:student).permit!
  end
end