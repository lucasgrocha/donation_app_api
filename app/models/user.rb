class User < ApplicationRecord
  has_many :donations
  has_many :comments
end
