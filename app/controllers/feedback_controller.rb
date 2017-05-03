class FeedbackController < ApplicationController

  def index
    @feedback = Feedback.new
  end

  def create
		@feedback=Feedback.new(feedback_params)
			if @feedback.save
				redirect_to(:action => 'home', :controller => 'login')
			else
				flash[:notice] = "Invalid form !"
				redirect_to :index
			end
	end

	private
	def user_params
		params.require(:feedback).permit(:comment)
	end

end
