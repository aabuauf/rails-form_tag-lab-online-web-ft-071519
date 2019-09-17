require 'pry'

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
    binding.pry
    Student.create(title: params[:student][:first_name], description: params[:student][:last_name])
    redirect_to posts_path
  end
end
