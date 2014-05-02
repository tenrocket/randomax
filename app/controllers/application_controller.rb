class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :ensure_logged_in

  helper_method :current_asker
  helper_method :current_giver

  private

  def current_asker
  	@current_asker ||= Asker.find(session[:asker_id]) if session[:asker_id]
  end

  def current_giver
  	@current_giver ||= Giver.find(session[:giver_id]) if session[:giver_id]
  end

  def ensure_logged_in
  	if current_asker.nil?
  	elsif current_giver.nil?
  		redirect_to login_path
  	end
  end
end
