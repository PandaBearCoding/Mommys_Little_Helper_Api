class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :total_points
      t.integer :current_points
      t.string :reward
      t.string :date

      t.timestamps
    end
  end
end
