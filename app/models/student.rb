class Student < ActiveRecord::Base
  has_secure_password
  has_many :attendances, dependant: :destory
  
  def avatar
    Avatar.from_student(self)
  end
  
  #any camelCase is accidental. Difficult habit to break, as many of us were taught Ruby with the instructor using camelCase.
  def self.in_seat(seat, pick_date)
    return Student.find(Attendance.where(attendances: {seat: seat, attended_on: pick_date}).collect {|a| a.student_id})
  end
  
  def self.absent(pick_date)
    return Student.where.not(id: Attendance.where(attendances: {attended_on: pick_date}).collect {|a| a.student_id})
  end
end