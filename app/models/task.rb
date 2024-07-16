# frozen_string_literal: true

# Task model
class Task < ApplicationRecord
  enum :priority, {
    low: 0,
    medium: 1,
    high: 2
  }

  enum :status, {
    open: 0,
    inprogress: 1,
    done: 2
  }

  validates :title, presence: true

  scope :active, -> { where(status: %i[open inprogress]) }
end
