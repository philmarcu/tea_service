require 'rails_helper'

RSpec.describe Customer do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:address) }
  end

  describe 'relationships' do
    it { should have_many(:subscriptions) }
    it { should have_many(:teas).through(:subscriptions) } 
  end

  describe '#instance_methods' do
    describe '#full_name' do
      it 'gives us the full name' do
        billy = Customer.create!(first_name: "Last", last_name: "Firstly", email: "email@email.com", address: "123 St NY, NY")
        expect(billy.full_name).to eq("Last Firstly")
      end
    end
  end
end