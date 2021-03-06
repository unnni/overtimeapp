class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id.to_i

		if @post.save
			redirect_to @post, notice: 'Your post was created successfully'
		else
			render :new
		end
	end

	def edit

	
	end

	def update
		if @post.update(post_params)
			redirect_to @post, notice: 'Your post was edited successfully'
		else
			render :edit
		end
	end

	def destroy

		@post.destroy
		redirect_to posts_path, notice: 'Your post was deleted successfully'	
	end

	
	def show
		
	end


	private
		def post_params 
			params.require(:post).permit(:date, :rationale, :id, :status)
		end

		def set_post
			@post = Post.find(params[:id])
		end

end
