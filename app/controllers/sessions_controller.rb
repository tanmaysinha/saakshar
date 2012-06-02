class SessionsController < ApplicationController
	
	def create
	 user = User.find_by_email(params[:email])
	 if user && user.authenticate(params[:password])
	   session[:user_id] = user.id
	 else
	   flash[:warning] = "Invalid username or password"
	 end 
	 redirect_to root_path
	end
	
	def destroy
	 reset_session
	 redirect_to root_path
	end
	
end