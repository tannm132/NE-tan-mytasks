# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = ::Tasks::ListTasks.run
  end

  def complete
    result = ::Tasks::CompleteTask.run(task)

    if !result.succeed
      render json: { errors: result.errors }, status: :unprocessable_entity
    else
      render json: result.object
    end
  end

  private

  def task
    @task ||= Task.find(params[:id])
  end
end
