FactoryBot.define do
  factory :donation do
    user      { create(:user) }
    donatable { rand(0...2) == 1 ? create(:money) : create(:product) }
  end
end