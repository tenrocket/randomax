class AskersController < ApplicationController

	def index
		@askers = Asker.all
	end

	def new
		@new_asker = Asker.new
	end

	def create
		@new_asker = Asker.new(asker_params)
		if @new_asker.save
			redirect_to askers_path, notice: "Thanks for signing up!"
		else
			render :new, "Bummer.  Your registration attempt failed."
		end
	end

	def edit
		@asker = Asker.find(params[:id])
	end

	def update
		@asker = Asker.find(params[:id])
		@asker.update_attributes(asker_params)
		redirect_to askers_path
	end

	def destroy
		@asker = Asker.find(params[:id])
		@asker.destroy
		redirect_to askers_path
	end

	def show
		@asker = Asker.find(params[:id])
	end

	private

	def asker_params
		params.require(:asker).permit!
	end
end
