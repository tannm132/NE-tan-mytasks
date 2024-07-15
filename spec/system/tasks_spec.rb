# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Tasks management', type: :system do
  before do
    driven_by(:rack_test)

    create(:task, title: 'Task 1')
    create(:task, title: 'Task 2')
  end

  it 'allows users to view task list' do
    visit '/tasks'

    expect(page).to have_text('Task 1')
    expect(page).to have_text('Task 2')
  end
end
