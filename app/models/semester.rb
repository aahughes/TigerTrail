class Semester < ApplicationRecord
	has_many :courses
	has_many :schedules

	def season_with_year
		"#{season} #{year}"
	end
end
