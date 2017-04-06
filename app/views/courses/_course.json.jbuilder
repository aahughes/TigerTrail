json.extract! course, :id, :name, :course_number, :subject_id, :building_id, :instructor_id, :semester_id, :status_id, :campus_id, :created_at, :updated_at
json.url course_url(course, format: :json)