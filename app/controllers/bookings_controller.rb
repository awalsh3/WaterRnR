class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pool = Pool.find(params[:pool_id])
    if @booking.save
      redirect_to pool_booking_path(@booking.pool, @booking)
    else
      redirect_to new_pool_booking_path(@pool)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
