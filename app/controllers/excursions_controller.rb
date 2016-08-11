class ExcursionsController < ApplicationController
  before_action :set_excursion, only: [:show, :edit, :update, :destroy]

  # GET /excursions
  # GET /excursions.json

  def create
    @city = City.find(params[:city_id])
    @city.excursions.create(excursion_params)

    redirect_to city_path(@city)
  end

  def show
    @excursion = Excursion.find(params[:id])
  end

  def destroy
    @excursion.destroy
    redirect_to :back
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excursion
      @excursion = Excursion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def excursion_params
      params.require(:excursion).permit(:title, :phone, :duration, :imgurl, :price, :about)
    end
end
