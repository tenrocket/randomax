class GiftsController < ApplicationController

	def index
		@gifts = Gift.all
	end

	def new
		@new_gift = Gift.new
	end

	def create
		@new_gift = Gift.new(gift_params)
		@new_gift.save
		redirect_to gifts_path
	end

	def edit
		@gift = Gift.find(params[:id])
	end

	def update
		@gift = Gift.find(params[:id])
		@gift.update_attributes(gift_params)
		redirect_to gifts_path
	end

	def destroy
		@gift = Gift.find(params[:id])
		@gift.destroy
		redirect_to gifts_path
	end

	def show
	end

	private

	def gift_params
		params.require(:gift).permit!
	end
end
