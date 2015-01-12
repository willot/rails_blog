class SessionsController <ApplicationController

	def index
	end


	def create
		user=User.find_by(pseudo: params[:session][:email])
		if user && user.authenticate(params[:session][password])
			session[:user_id]= user.user_id
			redirect_to root_url
		else
			render 'new'
		end
	end		
	# def new
	# 	@session=Session.new
	# end
end	