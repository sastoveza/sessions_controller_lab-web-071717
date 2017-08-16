class SessionsController < ApplicationController

	def new
	end

	def create
		if params[:name] && !params[:name].empty?
			session[:name] = params[:name]
			redirect_to root_path
		else
			flash[:message] = "Need a valid user name"

			redirect_to sessions_new_path
		end
	end

	def destroy
		if session[:name] == nil
			redirect_to sessions_new_path
		else
			session[:name] = nil
			redirect_to sessions_new_path
		end
	end
end
