class DosesController < ApplicationController

  before_action :set_dose, only: [:show, :edit, :update, :destroy]

   def index
    @doses = Dose.all
  end

  def show
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @dose.update(dose_params)
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:name, :cocktail_id, :ingredient_id)
  end


end

















end
