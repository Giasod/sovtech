class Task < ApplicationRecord
  enum task_status: { new_task: 0, in_progress: 1, complete: 2 }

  belongs_to :user

  validates :title, presence: :true
end
