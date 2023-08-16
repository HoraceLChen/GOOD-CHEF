class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.find(params[:offer_id])
    @booking.user_id = current_user.id
    @booking.offer = @offer
    raise
    if @booking.save
      redirect_to offer_path(@offer), notice: 'Booking was successfully created.'
    else
      render offer_path(@offer)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :offer_id, :date, :guests)
  end
end
