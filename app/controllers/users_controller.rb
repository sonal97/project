class UsersController < ApplicationController
before_filter :save_login_state, :only => [:new, :create]

	def new
		@user=User.new
	end

	def create
		@user=User.new(user_params)
			if @user.save
				flash[:notice] = "Registered successfully !"
				redirect_to(:action => 'home', :controller => 'login')
			else
				flash[:notice] = "Invalid form !"
				redirect_to :root
			end
	end
	
	private
	
	def user_params
		params.require(:user).permit(:name, :h_no, :sector, :city, :state, :country, :pincode, :email, :phone_no, :password)
	end
end
