class HomeController < ApplicationController

	def index
		@users = User.all
		@my_message = "hihi"
		# render 'users/index'
		# render plain: "haha"
		render json: @users
	end
	
end