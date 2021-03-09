class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :task_status, default: 0

      t.timestamps
    end
  end
end
