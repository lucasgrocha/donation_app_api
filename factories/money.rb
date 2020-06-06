FactoryBot.define do
  factory :money do
    value          { rand(5.10..50.99).round(2) }
    payment_method { %w(credit_card boleto).sample }
  end
end