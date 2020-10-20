class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.string :family_member
      t.string :due_date
      t.text :description
      t.string :priority

      t.timestamps
    end
  end
end
