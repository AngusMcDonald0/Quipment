class EquipmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @equipments = policy_scope(Equipment)
  end

  def show
    @equipment = Equipment.find(params[:id])
    authorize @equipment
  end

  def new
    @equipment = Equipment.new
    authorize @equipment
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user = current_user
    authorize @equipment
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
    authorize @equipment
  end

  def update
    if @equipment.update(equipment_params)
      redirect_to equipment_path(@equipment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @equipment.destroy
    redirect_to equipment_path(@equipment)
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :description, :location, photos: [])
  end
end
