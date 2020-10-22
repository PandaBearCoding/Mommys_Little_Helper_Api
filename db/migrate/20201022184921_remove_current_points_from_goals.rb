class RemoveCurrentPointsFromGoals < ActiveRecord::Migration[6.0]
  def change
    remove_column :goals, :current_points, :integer
  end
end
