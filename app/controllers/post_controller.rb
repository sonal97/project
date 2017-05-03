class PostController < ApplicationController
     def index
	 @posts=Post.new
		@posts = Post.all
	end

  	def new
  		@post=Company.new
  	end

  	def create
  		@post=Company.new(post_params)
  			if @post.save
  				flash[:notice] = "Saved successfully !"
  				redirect_to(:action => 'show', :controller => 'post')
  			else
  				flash[:notice] = "Invalid form !"
  				redirect_to(:action => 'new', :controller => 'post')
  			end
  	end

    def show
      @posts = Company.all
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
    end

  	private
  	def post_params
  		params.require(:post).permit(:name, :description, :sector, :city, :state, :country, :pincode, :experience, :salary, :expiry_date, :email, :phone_no)
  	end


end
