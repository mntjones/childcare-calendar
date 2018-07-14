class User < ApplicationRecord
	has_secure_password
	has_many :jobs
	has_many :sitters, through: :jobs
	validates :name, :email, presence: true
	validates :email, uniqueness: true
end
