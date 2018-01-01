class SessionsController < ApplicationController
	include SessionsHelper

	def new
		if logged_in?
			redirect_to projects_path
		end 
	end 

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user 
			params[:session][:remember_me] == '1' ? remember(user) : forget(user)
			# flash[:success] = "Welcome!"
			redirect_to projects_path
		else 
			flash.now[:error] = "Invalid email and/or password"
			render 'new'
		end 
	end 

	def destroy
		log_out if logged_in?
		redirect_to root_url
	end 

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end
end
