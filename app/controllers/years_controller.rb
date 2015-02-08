class YearsController < ApplicationController
  before_action :principal? #only the principal determines each grade's annual curriculum.

  def new
    @year = Year.new
  end

  def create
    
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def correct_user
    @grades = current_user.grades.find_by(id: params[:id]) # checks if the sent URL contains the id of a grade belonging to this student.
    if @grades.nil?
      if current_user.role < 2
        redirect_to root_url # if user trying to access is not the 'owner' of the grades or a teacher/principal, redirects user.
      end
    end
  end

end
