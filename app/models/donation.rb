class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :donatable, polymorphic: true
  has_many :comments
end
