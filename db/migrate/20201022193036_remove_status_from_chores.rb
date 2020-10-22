class RemoveStatusFromChores < ActiveRecord::Migration[6.0]
  def change
    remove_column :chores, :status, :string
  end
end
