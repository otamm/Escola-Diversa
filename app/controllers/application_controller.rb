class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper # including all the helper methods for Sessions controller on the universal controller ApplicationController, as they'll be used through the entire app.

  private

  def logged_in_user # confirms a logged in user.
    unless logged_in?
      store_location # defined on helpers/sessions_helper.rb
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def principal?
    unless current_user.role > 2
      redirect_to login_url # create to block actions by an user who wasn't supposed to do these actions, don't need friendly forwarding.
    end
  end

  def staff?
    unless current_user.role > 1
      redirect_to login_url # same as above.
    end
  end
  
end
