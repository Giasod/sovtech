class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def start
    task = Task.find(params[:id])
    task.in_progress!
    task.save

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :task_status)
  end
end
