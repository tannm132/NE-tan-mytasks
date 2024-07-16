# frozen_string_literal: true

module Tasks
  class CompleteTask < ApplicationService
    def initialize(task)
      @task = task
    end

    def run
      # TODO: define the result struct in base service
      result_struct = Struct.new(:succeed, :object, :errors)

      @task.status = :done
      @task.save

      result_struct.new(
        succeed: @task.valid?,
        object: @task,
        errors: @task.errors
      )
    end
  end
end
