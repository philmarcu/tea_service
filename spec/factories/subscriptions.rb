FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.variety + " #{frequency.capitalize} Plan" }
    price { Faker::Number.decimal(l_digits: 2) }
    status { 0 }
    frequency { ['monthly', 'quarterly', 'annual'].sample }
  end
end
