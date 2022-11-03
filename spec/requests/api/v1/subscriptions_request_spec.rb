require 'rails_helper'

RSpec.describe 'Subscriptions API' do
  context 'happy path' do
    let!(:billy) {create(:customer)}
    let!(:mark) {create(:customer)}
    let(:teas) {create_list(:tea, 3)}
    let!(:sub1) {create(:subscription, customer_id: billy.id, tea_id: teas[0].id)}
    let!(:sub2) {create(:subscription, customer_id: billy.id, tea_id: teas[1].id)}
    let!(:sub3) {create(:subscription, customer_id: billy.id, tea_id: teas[2].id, status: "cancelled")}

    it 'gets all of a Customer`s subscriptions' do
      get api_v1_customer_subscriptions_path(billy.id)

      parsed_json = JSON.parse(response.body, symbolize_names: true)
      results = parsed_json[:data]
      last_sub_status = results.last[:attributes][:status]

      expect(response).to be_successful
      expect(response.status).to eq(200)

      expect(results.size).to eq(3)
      expect(last_sub_status).to eq("cancelled")
      results.each do |sub|
        attributes = sub[:attributes]
        expect(sub).to have_key(:id)
        expect(sub[:type]).to eq("subscriptions")
        expect(attributes[:title]).to be_a String
        expect(attributes[:price]).to be_a Float
        expect(attributes[:status]).to be_a String
        expect(attributes[:frequency]).to be_a String
      end
    end
  end
end