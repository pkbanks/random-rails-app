class UsersController < ApplicationController
	def index
		@users = User.all
		render action: :hoho
	end

	def hoho
		puts "*** hoho hoho ***"
		render :index
	end

	def create
		@user = User.new(use_params)
		respond_to do |format|
			if @user.save
				format.html{ redirect_to @user, notice: "User was succesfully created."}
				format.json{ render :show, status: :created, location: @user}
			else
				format.html{ render :new}
				format.json{ render json: @user.errors, status: :unprocessable_entity}
			end
		end
	end

	def update
		response_to do |format|
			if @user.update(user_params)
				format.html{ redirect_to @user, notice: "User was successfully updated."}
				format.json{ render :show, status: :ok, location: @user}
			else
				format.html{ render :edit }
				format.json{ render json: @user.errors, status: :unprocessable_entity}
			end
		end
	end

	def destroy
		@user.destroy
		response_to do |format|
			format.html{ redirect_to uses_url, notice: "User was successfully destroyed."}
			format.json{ head :no_content}
		end
	end

end










