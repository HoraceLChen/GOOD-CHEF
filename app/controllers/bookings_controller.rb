class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
  # def update
  #   if
  #   @booking = Booking.find(params[:id])
  #   @booking.update(status: "confirmed")
  #   redirect_to @booking, notice: 'Booking status updated.'
  # end
  # def cancel
  #   @booking = Booking.find(params[:id])
  #   @booking.update(status: 'denied') # Change the status as needed
  #   redirect_to @booking, notice: 'Booking has been cancelled.'
  #   @booking.save
  # end
  # def approve
  #   @booking = Booking.find(params[:id])
  #   @booking.update(status: 'confirmed') # Change the status as needed
  #   redirect_to @booking, notice: 'Booking has been approved.'
  #   @booking.save
  # end


end
