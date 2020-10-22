class RemoveTotalPointsFromGoals < ActiveRecord::Migration[6.0]
  def change
    remove_column :goals, :total_points, :integer
  end
end
