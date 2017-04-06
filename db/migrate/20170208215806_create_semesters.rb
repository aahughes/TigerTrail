class CreateSemesters < ActiveRecord::Migration[5.0]
  def change
    create_table :semesters do |t|
      t.integer :year
      t.string :season

      t.timestamps
    end
  end
end
