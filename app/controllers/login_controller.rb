class LoginController < ApplicationController
  before_filter :authenticate_user, :only => [:home]
	before_filter :save_login_state, :only => [:login, :login_attempt]

	def index
	end

	def login_attempt
		@logged_user = User.authenticate(params[:email],params[:password])
		if @logged_user
			session[:user_id] = @logged_user.id
			flash[:notice] = "Welcome #{@logged_user.name}"
			render "home"
			@posts=Company.all
			
		else
			flash[:notice] = "invalid username/password"
			render "home"
			@posts=Company.all
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to :action => 'index'
	end

	def home
		render "home"
		@posts=Company.all
	end

  def admin
    admin = Admin.new(:email => 'admin@jobhunt.com', :password => '123qweasdzxc')
    admin.save
    a = Admin.find_by_email(params[:email])
    #  if a && a.match(params[:password])
    #    redirect_to(:action => 'admin_home')
    #  else
    #  	 redirect_to(:action => 'index')
    #  end
  end

  def admin_home
    @post = Company.all
  end

end
