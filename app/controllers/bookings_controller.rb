class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @equipment = Equipment.find(params[:equipment_id])
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:decision] == "accept"
      @booking.accepted!
    else
      @booking.rejected!
    end
    redirect_to dashboard_path
  end

  def create
    @booking = Booking.new(booking_params)
    @equipment = Equipment.find(params[:equipment_id])
    @booking.equipment = @equipment
    @booking.user = current_user
    if @booking.save
      redirect_to equipment_path(@equipment), notice: "Booking request made"
    else
      render "equipments/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
