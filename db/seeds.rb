user_1 = FactoryBot.create(:user)
user_2 = FactoryBot.create(:user)
user_3 = FactoryBot.create(:user)

FactoryBot.create(:user, email: 'mail@mail.com', name: 'Carlos Augusto')

rice_product = FactoryBot.create(:product, campaign_name: 'Rice')

donation_1 = FactoryBot.create(:donation, user: user_1)
donation_2 = FactoryBot.create(:donation, user: user_1)
donation_3 = FactoryBot.create(:donation, user: user_2)
donation_4 = FactoryBot.create(:donation, user: user_3)
donation_5 = FactoryBot.create(:donation, user: user_3)

FactoryBot.create(:comment, user: user_1, product: donation_1.donatable)
FactoryBot.create(:comment, user: user_2, product: donation_2.donatable)
FactoryBot.create(:comment, user: user_3, product: donation_3.donatable)
FactoryBot.create(:comment, user: user_1, product: donation_4.donatable)
FactoryBot.create(:comment, user: user_2, product: donation_5.donatable)

FactoryBot.create(:comment, user: user_1, product: rice_product)
FactoryBot.create(:comment, user: user_2, product: rice_product)
FactoryBot.create(:comment, user: user_3, product: rice_product)