class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def components
  end

  def dashboard
    @equipments = policy_scope(Equipment).where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @all_bookings = Booking.all
  end
end
