class UserCoursesController < ApplicationController
  def create
    course_to_add = Course.find(params[:course_id])
    unless current_user.courses.include?(course_to_add)
      UserCourse.create(course: course_to_add, user: current_user)
      flash[:notice] = "You have successfully enrolled in #{course_to_add.name}"
      redirect_to current_user
    else
      flash[:notice] = "Something went wrong with your enrollement"
      redirect_to root_path
    end
  end
end
