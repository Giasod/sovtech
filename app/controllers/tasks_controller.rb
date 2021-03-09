class TasksController < ApplicationController
  before_action :authenticate_user!, except: :index 

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
  
    if @task.save 
      redirect_to tasks_path
    else
      render 'new'
    end


  end

  def start
    task = Task.find(params[:id])
    task.in_progress!
    task.save

    redirect_to tasks_path
  end

  def complete
    task = Task.find(params[:id])
    task.complete!
    task.save

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :task_status)
  end
end
