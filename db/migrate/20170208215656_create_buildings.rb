class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.references :campus, foreign_key: true

      t.timestamps
    end
  end
end
