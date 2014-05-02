class GiversController < ApplicationController
	skip_filter :ensure_logged_in

	def index
		@givers = Giver.all
	end

	def new
		@new_giver = Giver.new
	end

	def create
		@new_giver = Giver.new(giver_params)
		if @new_giver.save
			redirect_to givers_path, notice: "Thanks for signing up!"
		else
			render :new, "Bummer.  Your registration attempt failed."
		end
	end

	def edit
		@giver = Giver.find(params[:id])
	end

	def update
		@giver = Giver.find(params[:id])
		@giver.update_attributes(giver_params)
		redirect_to givers_path
	end

	def destroy
		@giver = Giver.find(params[:id])
		@giver.destroy
		redirect_to givers_path
	end

	def show
		@giver = Giver.find(params[:id])
	end

	private

	def giver_params
		params.require(:giver).permit!
	end

end
