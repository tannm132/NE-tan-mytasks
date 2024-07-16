# frozen_string_literal: true

module TasksHelper
  def priority_classname(priority)
    hash = {
      high: 'badge-error',
      medium: 'badge-warning',
      low: 'badge-success'
    }.with_indifferent_access

    hash[priority]
  end

  def formatted_time(time)
    time.to_formatted_s(:long)
  end
end
