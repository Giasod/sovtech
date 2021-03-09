class AdduserToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :user
    add_foreign_key :tasks, :users
  end
end
