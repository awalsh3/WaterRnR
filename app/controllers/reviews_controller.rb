class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  # def create
  #   @review = Review.new(review_params)
  #   @review.user = current_user
  #   @review.@pool = Pool.find(params[:pool_id])
  #   if @review.save
  #     redirect_to pool_path(@pool)
  #   else
  #     render 'pools/show'
  #   end
  # end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
