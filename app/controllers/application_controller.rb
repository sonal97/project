class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :authenticate_user
  
  protected
	def authenticate_user
		if session[:user_id]
			@current_user = User.find(session[:user_id])
			return true
		else
			redirect_to(:controller => 'login', :action => 'index')
			return false
		end
	end

  def save_login_state
	if session[:user_id]
		redirect_to(:controller => 'login', :action => 'home')
		return false
	else
		return true
	end
  end

end
