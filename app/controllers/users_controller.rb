class UsersController < ApplicationController
  def dashboard
    @bookings_user_made = current_user.bookings
    @pools_user_own = Pool.where(user: current_user)
    @bookings_user_received = []
    @pools_user_own.each do |pool|
      @bookings_user_received << pool.bookings
    end
      @bookings_user_received.flatten!
  end
end
