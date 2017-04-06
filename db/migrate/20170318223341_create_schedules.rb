class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :student, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end

    create_table :course_schedules do |t|

      t.boolean :registered, default: false

      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :schedule, index: true, foreign_key: true
  	end

  end
end
