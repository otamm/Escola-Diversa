class StaffsController < UsersController
  before_action :principal?, only: [:new, :create ,:destroy] #only the principal can delete or create students or teachers.
  before_action :current_user, only: [:edit, :update] # only the principal or the current user can edit their own profile (principal can edit other profiles now, correct that later.)

  def index
    @staffs = Staff.all
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

  private

  def correct_user # a 'correct_user' is also defined on microposts_controller.rb, but it is specific to microposts and also unavailable here.
    unless current_user.principal? || current_user == @user # '.principal?' defined on application_controller.rb; the other is a validation to check wheter or not @user is the current user.
      redirect_to root_url
    end
  end

end
