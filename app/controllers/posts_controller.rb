class PostsController <ApplicationController
	
	def index
	end	

	def new
		@post=Post.new
	end

	def create
		@post=Post.create(user_params)
		redirect_to '/'
	end	

	def user_params
		params.require(:post).permit(:title, :content, :salt)
		#http://stackoverflow.com/questions/17335329/activemodelforbiddenattributeserror-when-creating-new-user
		#No idea what that means, particularly the salt part...
	end

end		
