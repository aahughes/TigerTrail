class Course < ApplicationRecord
  belongs_to :subject
  belongs_to :building
  belongs_to :instructor
  belongs_to :semester
  belongs_to :status
  belongs_to :campus
  has_many :course_students
  has_many :course_days
  has_many :students, through: :course_students
  has_many :days, through: :course_days
  has_many :course_schedules
  has_many :schedules, through: :course_schedules

end
