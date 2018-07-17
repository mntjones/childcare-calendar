
require 'pry'
class JobsController < ApplicationController

	def index
		@open_jobs = []
		@sitter = current_sitter
		@user = current_user

		Job.all.each do |job|
			if job.open_jobs == true
				@open_jobs << job
			end
		end
	end

	def new
		@job = Job.new
		@user = current_user
	end

	def create

		@job = Job.new(start_date_time: params[:job][:start_date_time], duration: params[:job][:duration])
		@job.user_id = current_user.id
		@job.sitter_id = "1"

		if @job.save
			# error message
			redirect_to user_path(current_user)
		else

			redirect_to new_job_path
		end
		
	end

	def show
		@job = Job.find_by(id: params[:id])
		@user = User.find_by(id: @job.user.id)
		@sitter = current_sitter
	end

	def edit
		@job = Job.find_by(id: params[:id])
		@user = current_user
	end

	def update
		@job = Job.find_by(id: params[:id])
		@job.sitter_id = current_sitter.id
		@job.open_jobs = false
		@job.save
		redirect_to sitter_path(current_sitter)
	end

	def destroy
		
	end


end

#DateTime.strptime(params[:job][:start_date_time], "%m/%d/%Y %H:%M")