require 'rails_helper'

RSpec.describe 'Subscribe API' do
  context 'happy path' do
    let!(:billy) {create(:customer)}
    let!(:tea) {create(:tea)}

    it 'lets a customer subscribe to a tea they choose' do
      expect(Subscription.all.size).to eq(0)

      sub_params = {
        title: "#{tea.title}",
        price: Faker::Number.decimal(l_digits: 2),
        frequency: "monthly",
        customer_id: billy.id,
        tea_id: tea.id
      }

      headers = {"CONTENT_TYPE" => "application/json"}
      
      post api_v1_subscriptions_path, headers: headers, params: JSON.generate(subscription: sub_params)
      parsed_json = JSON.parse(response.body, symbolize_names: true)
      results = parsed_json[:data]
      attributes = results[:attributes]

      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(results).to have_key(:id)
      expect(results[:type]).to eq("subscriptions")
      expect(attributes[:title]).to be_a String
      expect(attributes[:price]).to be_a Float
      expect(attributes[:status]).to be_a String
      expect(attributes[:frequency]).to be_a String
    end
  end
end