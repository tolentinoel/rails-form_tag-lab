class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show

  end

  def new

  end

  def create
    @student = Student.new(s_params)

    if @student.valid?
      @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

  private

  def s_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
