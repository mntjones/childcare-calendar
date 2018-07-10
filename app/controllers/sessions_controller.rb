class SessionsController < ApplicationController

	def user_new

	end

	def user_create
		@user = User.find_by(name: params["name"])

    if @user && @user.authenticate(params["password"])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      redirect_to(controller: 'users', action: 'new')
    end 
	end

	def user_destroy
		session.delete :user_id
    redirect_to(controller: 'application', action: 'home')
	end

	def sitter_new

	end

	def sitter_create
		@sitter = Sitter.find_by(name: params["name"])

    if @sitter && @sitter.authenticate(params["password"])
      session[:sitter_id] = @sitter.id
      redirect_to sitter_path(@sitter)
    else 
      redirect_to(controller: 'sitters', action: 'new')
    end 
	end

	def sitter_destroy
		session.delete :sitter_id
    redirect_to(controller: 'application', action: 'home')
	end

end
