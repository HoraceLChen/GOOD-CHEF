class Booking < ApplicationRecord
  belongs_to :offer
  before_create :set_default_status

  private

  def set_default_status
    self.status = "pending"
  end
end
