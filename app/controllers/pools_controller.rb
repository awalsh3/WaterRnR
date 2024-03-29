class PoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pools = Pool.all.order("created_at DESC")
  end

  def show
    @pool = Pool.find(params[:id])
    @booking = Booking.new
  end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Pool.new(pool_params)
    @pool.user = current_user
    if @pool.save
      redirect_to dashboard_users_path(current_user)
    else
      render :new
    end
  end

  private

  def pool_params
    params.require(:pool).permit(:location, :description, :photo, :title)
  end
end
