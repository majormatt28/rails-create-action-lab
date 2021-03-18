class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    #byebug
    @student = Student.new
    #byebug
  end

  def create
    #byebug
    #@student = Student.create(first_name: params[:student][:first_name],last_name: params[:student][:last_name])
    #byebug
    #@student.first_name = params[:first_name]
    #@student.last_name = params[:last_name]
    #@student.save
    #redirect_to index(@student)
    Student.create(student_params)
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
