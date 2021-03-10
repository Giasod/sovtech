class AddApprovedCounterToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :approved_counter, :integer, default: 0
  end
end
