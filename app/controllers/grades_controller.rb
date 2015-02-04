class GradesController < ApplicationController
  before_action :staff?, except: [:show]
  before_action :correct_user?, only: [:show]

  def show
    if current_user.role == 1
      @grades = current_user.grades
    else
      @grades = user.where(id: params[:user_id]).grades
    end
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
