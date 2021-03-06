class TasksController < ApplicationController
  def index
    #bypasses view/index/erb file. JSON instead of HTML (this is the beginning of removing the refresh step).
    render json: Task.order(:id) 
  end

  def create
    task = Task.create(task_params)
    render json: task
  end

  def update
    task = Task.find(params[:id])
    task.update_attributes(task_params)
    render json: task 
  end

  private

  def task_params
    params.require(:task).permit(:done, :title)
  end
end

