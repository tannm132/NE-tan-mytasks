# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    sequence(:title) { |n| "Task ##{n}" }
    subtitle { 'subtitle' }
    due_at { 2.days.from_now }
    priority { 'high' }
    status { 'open' }
  end
end
