# frozen_string_literal: true

module Tasks
  class ListTasks < ApplicationService
    def run
      Task.order(due_at: :asc, priority: :desc).to_a
    end
  end
end
