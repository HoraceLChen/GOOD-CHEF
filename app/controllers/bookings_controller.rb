class BookingsController < ApplicationController
  before_action :set_booking, only: [:update]

  def index
    @bookings = current_user.bookings
    #manual way would be to join the tables and sql query condition: all where offer.userid = current_user.id
    @bookings_as_chef = current_user.bookings_as_chef
  end

  def create
    @booking = Booking.new(booking_params)
    @offer = Offer.find(params[:offer_id])
    @booking.user_id = current_user.id
    @booking.offer = @offer
    if @booking.save
      redirect_to offer_path(@offer), notice: 'Booking was successfully created.'
    else
      render offer_path(@offer)
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :offer_id, :date, :guests, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
