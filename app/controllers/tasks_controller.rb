class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @to_do = current_user.task.all.where(state: "to_do")
    @doing = current_user.task.all.where(state: "doing")
    @done = current_user.task.all.where(state: "done")
    respond_with(@tasks)
  end

  def show
    respond_with(@task)
  end

  def new
    @task = Task.new
    respond_with(@task)
  end

  def edit
  end

  def create
    @task = current_user.task.new(task_params)
    @task.save
    respond_with(@task)
  end

  def update
    @task.update(task_params)
    respond_with(@task)
  end

  def destroy
    @task.destroy
    respond_with(@task)
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:content, :state)
    end
end
