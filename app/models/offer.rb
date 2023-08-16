class Offer < ApplicationRecord
  has_many :bookings
  has_many :users
end
