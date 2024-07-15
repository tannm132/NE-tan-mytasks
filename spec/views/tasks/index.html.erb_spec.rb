# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tasks/index.html.erb', type: :view do
  it 'displays heading text' do
    assign(:tasks, [])

    render

    expect(rendered).to have_content('My tasks')
  end
end
