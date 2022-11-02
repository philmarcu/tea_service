FactoryBot.define do
  factory :subscription do
    title { Faker::Subscription.plan }
    price { Faker::Number.decimal(l_digits: 2) }
    status { 0 }
    frequency { [10, 20, 30].sample }
  end
end
