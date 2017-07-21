class TasksController < ApplicationController
  def index
    #bypasses view/index/erb file. JSON instead of HTML (this is the beginning of removing the refresh step).
    render json: Task.all 
  end
end

