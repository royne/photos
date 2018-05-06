class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.create(courses_params)

  end

  private
    def courses_params
      params.require(:course).permit(:name)
    end
end
