class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper


  private 

  def logged_in_user
  	unless logged_in?
  		flash[:error] = "Please Log In"
  		redirect_to login_url
  	end 
  end 

  def admin_user
  	unless admin_user?
  		flash[:error] = "Authorised user only"
  		redirect_to projects_path
  	end 
  end 
  

end
