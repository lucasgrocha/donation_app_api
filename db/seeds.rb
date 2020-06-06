user_1 = FactoryBot.create(:user)
user_2 = FactoryBot.create(:user)
user_3 = FactoryBot.create(:user)

FactoryBot.create(:user, email: 'mail@mail.com', name: 'Carlos Augusto')

FactoryBot.create(:product, campaign_name: 'Rice')

donation_1 = FactoryBot.create(:donation, user: user_1)
donation_2 = FactoryBot.create(:donation, user: user_1)
donation_3 = FactoryBot.create(:donation, user: user_2)
donation_4 = FactoryBot.create(:donation, user: user_3)
donation_5 = FactoryBot.create(:donation, user: user_3)

FactoryBot.create(:comment, user: user_1, donation: donation_1)
FactoryBot.create(:comment, user: user_1, donation: donation_2)
FactoryBot.create(:comment, user: user_1, donation: donation_4)
FactoryBot.create(:comment, user: user_1, donation: donation_5)
FactoryBot.create(:comment, user: user_2, donation: donation_1)
FactoryBot.create(:comment, user: user_2, donation: donation_3)
FactoryBot.create(:comment, user: user_2, donation: donation_4)
FactoryBot.create(:comment, user: user_3, donation: donation_2)
FactoryBot.create(:comment, user: user_3, donation: donation_3)
FactoryBot.create(:comment, user: user_3, donation: donation_5)