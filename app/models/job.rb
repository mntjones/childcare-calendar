class Job < ApplicationRecord
	belongs_to :user
	belongs_to :sitter

	def payment
		self.sitter.hourly_rate * self.user.num_of_kids
	end

end
