class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create

  end

  def show
    @booking = booking.find(params[:id])
  end
end
