class Job < ApplicationRecord
	belongs_to :user
	belongs_to :sitter
	

	def payment
		if self.user.num_of_kids > 1
			(self.sitter.hourly_rate * (self.duration)) + ((self.sitter.hourly_rate / 2) * (self.user.num_of_kids - 1) * (self.duration))
		else
			self.sitter.hourly_rate * (self.duration)
		end

	end


end
