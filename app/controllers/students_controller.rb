class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
#    <Student id: nil, first_name: nil, last_name: nil, created_at: nil, updated_at: nil> 
    #byebug
    student = Student.new
    student.first_name = params[:first_name]
    student.last_name = params[:last_name]
    student.save
    redirect_to student
  end

end
