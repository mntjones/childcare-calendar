require 'pry'
class ApplicationController < ActionController::Base

	def home

		# if session[:user_id]
		# 	@user = User.find_by(id: session[:user_id])
		# 	redirect_to user_path(@user)
		# elsif session[:sitter_id]
		# 	@sitter = Sitter.find_by(id: session[:sitter_id])
		# 	redirect_to sitter_path(@sitter)
		# end

	end


	private

	def current_sitter
    Sitter.find_by(id: session[:sitter_id])
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    redirect_to root_path unless current_sitter || current_user
  end

end