class SittersController < ApplicationController
		def index
		@sitters = Sitter.all
		@sitter = current_sitter
	end

	def new
		@sitter = Sitter.new
	end

	def create
		@sitter = Sitter.create(sitter_params)
		if @sitter 
			session[:sitter_id] = @sitter.id
    	redirect_to sitter_path(@sitter)
    else
    	# add flash message to complete form
    	redirect_to(controller: 'sitters', action: 'new')
    end
	end

	def show
		@sitter = Sitter.find_by(id: params[:id])
		if @sitter == current_sitter
			

		else
			#add flash message to log in
			redirect_to root_path
		end
	end

	def destroy
		session.delete :sitter_id
    redirect_to(controller: 'application', action: 'home')
	end

	private 

	def sitter_params
		params.require(:sitter).permit(:name, :email, :password, :hourly_rate)
	end

  def current_sitter
    Sitter.find_by(id: session[:sitter_id])
  end

  def logged_in?
    redirect_to root_path unless current_sitter
  end

end
