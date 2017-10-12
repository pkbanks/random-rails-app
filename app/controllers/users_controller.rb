class UsersController < ApplicationController
	def index
		@message = "haha"
		render 'index'
	end
end