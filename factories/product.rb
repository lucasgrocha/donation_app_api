FactoryBot.define do
  factory :product do
    campaign_name   { FFaker::Lorem.words.join(' ') }
    collected       { rand(5..30) }
    goal            { 30 }
    expiration_date { DateTime.now + 3.day }
  end
end