# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tasks::CompleteTask do # rubocop:disable Metrics/BlockLength
  let(:task) { create(:task) }

  context 'when complete task successfully' do
    it 'returns task object' do
      result = described_class.run(task)

      expect(result.succeed).to eq(true)
      expect(result.object).to eq(task)
      expect(result.errors).to be_empty
    end
  end

  context 'when failed to complete task' do
    it 'returns errors' do
      double = double('result', succeed: false, errors: ['Failed to complete task.'])
      allow_any_instance_of(Tasks::CompleteTask).to receive(:run).and_return(double)

      result = described_class.run(task)

      expect(result.succeed).to eq(false)
      expect(result.errors).to contain_exactly('Failed to complete task.')
    end
  end

  context 'when task is already completed' do
    it 'returns errors' do
      task = create(:task, status: :done)

      result = described_class.run(task)

      expect(result.succeed).to eq(false)
      expect(result.errors).to contain_exactly('Task is already completed.')
    end
  end
end
