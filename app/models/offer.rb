class Offer < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :title, :cuisine, :description ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
