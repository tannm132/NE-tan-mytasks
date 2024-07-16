# frozen_string_literal: true

module Tasks
  class CompleteTask < ApplicationService
    def initialize(task)
      @task = task
      @result = Result.new(
        succeed: false,
        object: @task,
        errors: @task.errors
      )
    end

    def run
      if @task.done?
        @result.errors.add(:base, 'Task is already completed.')
        return @result
      end

      @task.status = :done
      @task.save

      @result.succeed = @task.valid?
      @result.errors.merge!(@task.errors)

      @result
    end
  end
end
