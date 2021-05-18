class UsersController < ApplicationController
  def dashboard
    @bookings_user_made = current_user.bookings
    @bookings_user_received = Booking.joins(:pool).where(user: current_user)
    @pools_user_own = Pool.where(user: current_user)
  end
end
