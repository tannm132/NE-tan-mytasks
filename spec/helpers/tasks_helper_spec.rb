# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TasksHelper, type: :helper do
  describe '#priority_classname' do
    it 'returns classname of corresponding task priority' do
      expect(helper.priority_classname('high')).to eq('badge-error')
    end
  end

  describe '#formatted_time' do
    it 'returns formatted time' do
      time = DateTime.new(2024, 7, 16, 10, 11)

      expect(helper.formatted_time(time)).to eq('July 16, 2024 10:11')
    end
  end
end
