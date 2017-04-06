class Schedule < ApplicationRecord
  belongs_to :student
  belongs_to :semester

  has_many :course_schedules
  has_many :courses, through: :course_schedules

end
