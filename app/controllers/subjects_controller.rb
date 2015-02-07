class SubjectsController < ApplicationController
  before_action: :principal?, except: [:index,:show]

  def index
    @subjects = Subject.all
  end

  def new

  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end
