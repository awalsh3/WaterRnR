class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @pool = pool.find(params[:pool_id])
    @booking.pool = @pool
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
