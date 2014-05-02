class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@new_user = User.new
	end

	def create
		@new_user = User.new(user_params)
		if @new_user.save
			redirect_to users_path, notice: "Thanks for signing up!"
		else
			render :new, "Bummer.  Your registration attempt failed."
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update_attributes(user_params)
		redirect_to users_path
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit!
	end
end
