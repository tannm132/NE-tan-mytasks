# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Tasks management', type: :system do
  before do
    driven_by :selenium, using: :headless_chrome
  end

  it 'allows users to view task list' do
    create(:task, title: 'Task 1')
    create(:task, title: 'Task 2')

    visit '/tasks'

    expect(page).to have_text('Task 1')
    expect(page).to have_text('Task 2')
  end

  it 'allows users to complete a task' do
    create(:task, title: 'To be completed')

    visit '/tasks'

    check

    sleep 2

    expect(page).not_to have_text('To be completed')
  end
end
