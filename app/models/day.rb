class Day < ApplicationRecord
	has_many :courses, through: :course_days
end
