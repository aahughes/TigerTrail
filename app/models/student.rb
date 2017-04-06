class Student < ApplicationRecord
  
  	has_many :course_students
	has_many :courses, through: :course_students

	has_many :course_schedules
	has_many :courses, through: :course_schedules
	
	has_many :schedules

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
