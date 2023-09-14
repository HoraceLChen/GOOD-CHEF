class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  before_create :set_default_status

  enum :status, [:pending, :rejected, :accepted]

  def pending?
    status == "pending"
  end
  private

  def set_default_status
    self.status = "pending"
  end

end
