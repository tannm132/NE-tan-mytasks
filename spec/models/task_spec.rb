# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  subject(:task) { build(:task) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(task).to be_valid
    end

    it 'is not valid without a title' do
      task.title = nil

      expect(task).not_to be_valid
    end
  end
end
