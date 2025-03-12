require 'rails_helper'

RSpec.describe 'Authors', type: :request do
  describe 'GET /index' do
    before do
      FactoryBot.create_list(:author, 10)
      get '/api/authors'
    end

    it 'returns all authors' do
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end
end
