class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @equipment = Equipment.find(params[:equipment_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @equipment = Equipment.find(params[:equipment_id])
    @booking.equipment = @equipment
    @booking.user = current_user
    if @booking.save
      redirect_to equipment_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
