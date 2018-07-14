class Job < ApplicationRecord
	belongs_to :user
	belongs_to :sitter
	validates :start_date_time, :end_date_time, presence: true

	def payment
		self.sitter.hourly_rate * self.user.num_of_kids
	end

end
