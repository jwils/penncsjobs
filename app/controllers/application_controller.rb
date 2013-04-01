class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login

  private

  def require_login
    unless current_user or devise_controller?
      redirect_to new_user_session_path
    end
  end
end
