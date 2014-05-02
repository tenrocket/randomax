class SessionsController < ApplicationController
	skip_filter :ensure_logged_in

	def new
	end

	def create
		asker = Asker.find_by_email(params[:email]).try(:authenticate, params[:password])
		giver = Giver.find_by_email(params[:email]).try(:authenticate, params[:password])
		if asker
			session[:asker_id] = asker.id
			redirect_to new_asker_path, notice: "Sweet! You are logged in."
		elsif giver
			session[:giver_id] = giver.id
			redirect_to new_giver_path, notice: "Sweet! You are logged in."
		else
			flash.now.alert = "Bummer.  Your login attempt failed."
			render :new
		end
	end

	def destroy
		if session[:asker_id] = nil
		elsif session[:giver_id] = nil
			redirect_to login_path, notice: "You are now logged out.  Thanks for stopping by!"
		end
	end

end