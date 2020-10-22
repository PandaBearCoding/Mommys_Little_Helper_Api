class AddStatusToChores < ActiveRecord::Migration[6.0]
  def change
    add_column :chores, :status, :string
  end
end
