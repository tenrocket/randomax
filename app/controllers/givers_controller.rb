class GiversController < ApplicationController

	def index
		@givers = Giver.all
	end

	def new
		@new_giver = Giver.new
	end

	def create
		@new_giver = Giver.new(giver_params)
		@new_giver.save
		redirect_to givers_path
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
