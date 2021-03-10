class TasksController < ApplicationController
  before_action :authenticate_user!, except: :index 
  before_action :set_task, except: %i[index new create]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
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

  def update
    @task.update(task_params)
    render 'show'
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end
  

  def start
    @task.in_progress!
    @task.save

    redirect_to tasks_path
  end

  def complete
    @task.complete!
    @task.save

    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :task_status)
  end
end
