class AttendancesController < ApplicationController
  def new
    @attendance= Attendance.new
  end
  
  def create
    @attendance= Attendance.new
    @attendance.attended_on= Date.today
    @attendance.seat= params[:attendance][:seat]
    @attendance.student_id= current_student.id
    @attendance_exists= Attendance.where(attendances: {attended_on: Date.today, student_id: current_student.id})
    
    if (@attendance_exists.first==nil)
      @attendance.save
      redirect_to attendances_path, :notice => "Successfully logged attendance."
    else
      flash[:error]= "Attendance has already been logged for this day."
      render "new"
    end
  end
  
  