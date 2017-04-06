class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.string :name

      t.timestamps
    end

    create_table :course_days do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.belongs_to :day, index: true, foreign_key: true
      t.time :start
      t.time :end
    end
    
  end
end

