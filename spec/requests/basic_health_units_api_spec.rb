require 'rails_helper'

RSpec.describe 'BasicHealthUnitsApi', type: :request do
  describe 'GET /api/v1/find_ubs' do
    let(:get_ubs) { get api_v1_find_ubs_path, params: params }
    before { get_ubs }

    context 'when params are correct' do
      let(:params) { { query: '-23.604936,-46.692999', page: 1, per_page: 10 } }

      it { expect(response).to have_http_status(:bad_request) }
    end

    context 'when params are missing' do
      let(:params) { { query: '', page: 1, per_page: 10 } }

      it 'returns HTTP status code unprocessable_entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
