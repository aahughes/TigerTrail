class CourseDay < ApplicationRecord
  belongs_to :course
  belongs_to :day
end
