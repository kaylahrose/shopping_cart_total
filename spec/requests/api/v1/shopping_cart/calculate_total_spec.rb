require 'rails_helper'

describe 'Shopping cart api' do
  describe 'GET /calculate_total' do
    it '#calculate_total' do
      data = {
        "cart": [
          {
            "item": "Product 1",
            "price": 10.99,
            "quantity": 2
          },
          {
            "item": "Product 2",
            "price": 5.49,
            "quantity": 3
          }
        ]
      }
      headers = { "CONTENT_TYPE" => "application/json" }
      post "/api/v1/calculate_total", headers: headers, params: JSON.generate(data)
      response.body = JSON.parse(response.body, symbolize_names: true)

      expect(response).to be_successful
      expect(respose_body).to eq({
        "total_price": 37.44
      })
    end
    context 'bad data' do
      it 'returns the appropriate error'
    end
  end
end