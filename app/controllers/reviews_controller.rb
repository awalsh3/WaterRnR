class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @pool = pool.find(params[:pool_id])
    @review.pool = @pool
    if @review.save
      redirect_to pool_path(@pool)
    else
      render 'pools/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
