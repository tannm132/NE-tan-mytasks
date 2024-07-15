# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = ::Tasks::ListTasks.run
  end
end
