class ReviewsController < ApplicationController
  def new
  end

  def create
    @review = Review.new(review_params)
    @pool = pool.find(params[:pool_id])
    @review.pool = @list
    if @review.save
      redirect_to list_path(@pool)
    else
      render 'pools/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
