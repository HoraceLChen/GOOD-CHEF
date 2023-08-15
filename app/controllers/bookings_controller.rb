class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    if @booking.save?
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :chef_offer_id, :date, :status)
  end
end
