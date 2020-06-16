FactoryBot.define do
  factory :donation do
    user      { create(:user) }
    donatable { create(:product) }
  end
end