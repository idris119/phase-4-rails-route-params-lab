class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
  def grades
    grades = Student.select(:id, :grade)
    render json: grades
  end

  def highest_grade
    highest_grade = Student.order(grade: :desc).limit(1)
    render json: highest_grade
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
