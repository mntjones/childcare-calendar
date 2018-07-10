class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user 
			session[:user_id] = @user.id
    	redirect_to user_path(@user)
    else
    	# add flash message to complete form
    	redirect_to(controller: 'users', action: 'new')
    end
	end

	def show
		@user = User.find_by(id: params[:id])
		if @user == current_user
			

		else
			#add flash message to log in
			redirect_to root_path
		end
	end

	def destroy
		session.delete :user_id
    redirect_to(controller: 'application', action: 'home')
	end

	private 

	def user_params
		params.require(:user).permit(:name, :email, :password, :num_of_kids)
	end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    redirect_to root_path unless current_user
  end

end
