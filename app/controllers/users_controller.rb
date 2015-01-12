class UsersController < ApplicationController
	def index
	end	

	def new
		@user=User.new
	end

	def create
		# @user = User.create(params[:user])
		# @user = User.create(:pseudo => user[:pseudo])
		# @user.save
		@user = User.create(user_params)
		redirect_to '/'
	end	

	def user_params
		params.require(:user).permit(:pseudo, :email, :password, :salt, :encrypted_password)
		#http://stackoverflow.com/questions/17335329/activemodelforbiddenattributeserror-when-creating-new-user
		#No idea what that means, particularly the salt part...
	end	
end	