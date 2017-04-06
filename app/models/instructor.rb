class Instructor < ApplicationRecord
	has_many :courses

	def first_and_last
		"#{first_name} #{last_name}"
	end
end
