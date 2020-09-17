require 'rails_helper'

RSpec.describe 'Photos', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/photos/index'
      expect(response).to have_http_status(:success)
    end
  end
end
