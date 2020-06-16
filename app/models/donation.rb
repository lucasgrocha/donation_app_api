class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :donatable, polymorphic: true

  scope :product_donation, -> do
    where('donatable_type = ?', 'Product')
  end
end
