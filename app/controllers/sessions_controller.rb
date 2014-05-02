class SessionsController < ApplicationController
	skip_filter :ensure_logged_in

	def new
	end

	def create
		user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
		if user
			session[:user_id] = user.id
			redirect_to users_path, notice: "Sweet! You are logged in."
		else
			flash.now.alert = "Bummer.  Your login attempt failed."
			render :new
		end
	end

	def destroy
		if session[:user_id] = nil
			redirect_to login_path, notice: "You are now logged out.  Thanks for stopping by!"
		end
	end

end