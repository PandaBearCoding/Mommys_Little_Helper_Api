class AddStatusToChore < ActiveRecord::Migration[6.0]
  def change
    add_column :chores, :status, :boolean
  end
end
