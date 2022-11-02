FactoryBot.define do
  factory :tea do
    title { Faker::Tea.variety }
    temperature { Faker::Number.between(from: 120, to: 220) }
    brew_time { Faker::Number.within(range: 1..15) }
    description { Faker::Tea.type + " - " + Faker::Company.catch_phrase }
  end
end
