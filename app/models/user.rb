class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :offers, dependent: :destroy
  has_many :bookings_as_chef, through: :offers, source: :bookings

  def full_name
    "#{first_name} #{last_name}"
  end

end
