class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@new_post = Post.new
	end

	def create
		@new_post = Post.new(post_params)
		@new_post.save
		redirect_to posts_path
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update_attributes(post_params)
		redirect_to posts_path
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	def show
	end

	private

	def post_params
		params.require(:post).permit!
	end

end