# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Tasks', type: :request do
  describe 'GET /tasks' do
    it 'returns http success' do
      get '/tasks'

      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /tasks/:id/complete' do
    let(:task) { create(:task) }

    context 'when successful' do
      it 'returns http success' do
        post "/tasks/#{task.id}/complete"

        expect(response).to have_http_status(:success)
      end
    end

    context 'when failed' do
      it 'returns http unprocessable entity' do
        allow_any_instance_of(::Tasks::CompleteTask)
          .to receive(:run)
          .and_return(double('result', succeed: false, errors: []))

        post "/tasks/#{task.id}/complete"

        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
