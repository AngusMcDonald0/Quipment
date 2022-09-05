class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:equipment).permit(:name, :description, :location)
  end
end
