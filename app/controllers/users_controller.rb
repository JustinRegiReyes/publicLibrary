class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		userParams = params.require(:user).permit(:first_name, :last_name, :email, :password)
		@user = User.create(userParams)

		redirect_to "/users"
	end

	def show
		@user = User.find(params[:id])
	end



end
