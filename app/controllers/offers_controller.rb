class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update]
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
    if params[:query].present?
      @offers = Offer.search(params[:query])
    else
      @offers = Offer.all
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

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect_to offer_path(@offer)
  end

  private

  def offer_params
    params.require(:offer).permit(:cuisine, :price_pp, :description, :title, photos: [])
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
