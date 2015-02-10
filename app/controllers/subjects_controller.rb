class SubjectsController < ApplicationController
  before_action :principal?, except: [:index,:show]

  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Matéria registrada com sucesso!"
    end
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
