class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks.{html, js}
  def index
    #@tasks = Task.all
    @complete_tasks = Task.where(complete: true)
    @incomplete_tasks = Task.where(complete: false)
  end

  # GET /tasks/1.{html, js}
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks.{html, js}
  def create
    @task = Task.create!(task_params)
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  # PATCH/PUT /tasks/1.{html, js}
  def update
    @task.update(task_params)
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end

  # DELETE /tasks/1.{html, js}
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :complete)
    end
end
