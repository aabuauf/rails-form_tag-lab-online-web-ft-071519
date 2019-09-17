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
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
end
