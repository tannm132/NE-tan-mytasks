# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tasks::ListTasks do
  subject { described_class.run }

  it 'returns a list of ordered task objects' do
    due_date = 2.days.from_now
    task1 = create(:task, due_at: due_date, priority: 'low')
    task2 = create(:task, due_at: due_date, priority: 'high')
    task3 = create(:task, due_at: due_date + 1.day, priority: 'high')

    expect(subject).to eq([task2, task1, task3])
  end
end
