class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_number
      t.string :room_number
      t.string :section
      t.float :credits, scale: 1
      t.references :subject, foreign_key: true
      t.references :building, foreign_key: true
      t.references :instructor, foreign_key: true
      t.references :semester, foreign_key: true
      t.references :status, foreign_key: true
      t.references :campus, foreign_key: true

      t.timestamps
    end

    create_table :course_students do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :student, index: true, foreign_key: true
    end

  end
end
