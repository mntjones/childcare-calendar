
require 'pry'
class JobsController < ApplicationController

	def index
		@open_jobs = []
		@sitter = current_sitter

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

		@job = Job.new(start_date_time: DateTime.strptime(params[:job][:start_date_time], "%m/%d/%Y %H:%M"), end_date_time: DateTime.strptime(params[:job][:end_date_time], "%m/%d/%Y %H:%M"))
		@job.user_id = current_user.id
		@job.sitter_id = "1"
		@job.save

		if @job.valid?
			redirect_to user_path(current_user)
		else
			redirect_to new_job_path
		end
		
	end

end
