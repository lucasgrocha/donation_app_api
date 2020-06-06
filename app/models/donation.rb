class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :donatable, polymorphic: true
end
