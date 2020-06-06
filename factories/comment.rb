FactoryBot.define do
  factory :comment do
    message  { FFaker::Lorem.phrase }
  end
end