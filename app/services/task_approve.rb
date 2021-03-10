class TaskApprove < ApplicationService
  def initialize(task)
    @task = task
  end

  def call
    counter = @task.approved_counter
    counter += 1
    @task.update(approved_counter: counter)
  end
end