class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @offer = Offer.find(params[:offer_id])
    @review.user = current_user
    @review.offer = @offer
    if @review.save
      redirect_to offer_path(@offer), notice: 'Review was successfully created.'
    else
      render offer_path(@offer)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
