class OffersController < ApplicationController
  before_action :set_offer, only: [:show]
  def index
    @offers = Offer.all

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window_html: render_to_string(partial: "offers/info_window", locals: {offer: offer}),
        map_marker_html: render_to_string(partial: "offers/map_marker", locals: { offer: offer })
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = current_user.id
    if @offer.save
      redirect_to offers_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:cuisine, :price_pp, :title)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
