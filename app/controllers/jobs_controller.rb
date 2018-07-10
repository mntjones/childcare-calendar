class JobsController < ApplicationController

	def index
		@open_jobs = []
		@claimed_jobs = []
		Job.all.each do |job|
			if job.sitter_id
				@claimed_jobs << job
			else
				@open_jobs << job
			end
		end
	end

	def new
		@job = Job.new
	end
	

end
