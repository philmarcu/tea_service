require 'rails_helper'

RSpec.describe 'Teas API' do
  context 'happy path' do
    let!(:teas) {create_list(:tea, 5)}
    let!(:tea)  { teas.first }
  
    it 'sends a list of teas' do
      get api_v1_teas_path
  
      parsed_json = JSON.parse(response.body, symbolize_names: true)
      results = parsed_json[:data]
  
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(results.size).to eq(5)
      results.each do |tea_data|
        attributes = tea_data[:attributes]
        expect(tea_data).to have_key(:id)
        expect(attributes[:title]).to be_a String
        expect(attributes[:description]).to be_a String
        expect(attributes[:temperature]).to be_a Float
        expect(attributes[:brew_time]).to be_a Integer
      end
    end
  end
end