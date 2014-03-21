class StudentsController < ApplicationController
  def new
    @student= Student.new
  end

  def create
    @student= Student.create!(student_params)
    session[:student_id]= @student.id
    redirect_to students_path, notice: "Hi, #{@student.name}!"
  end

  def edit
    @student= current_student
  end

  def update
    current_student.update_attributes!(student_params)
    redirect_to students_path, notice: "Successfully updated your profile."
  end

  def index
    @current_date= params[:date] || Date.today
    @students= Student.all
    @seat1= Student.in_seat("1", @current_date)
    @seat2= Student.in_seat("2", @current_date)
    @seat3= Student.in_seat("3", @current_date)
    @seat4= Student.in_seat("4", @current_date)
    @absent= Student.absent(@current_date)
  end
  
  def upload
    StudentUploader.new(params[:file]).import
    redirect_to students_path
    end
  end

  private
  def student_params
    params.require(:student).permit!
  end
end