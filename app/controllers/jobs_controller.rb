class JobsController < ApplicationController

	def index
		@open_jobs = []
		@sitter = current_sitter
		Job.all.each do |job|
			if !job.sitter_id
				@open_jobs << job
			end
		end
	end

	def new
		@job = Job.new
	end


end
