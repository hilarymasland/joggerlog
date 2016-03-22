class RacesController < ApplicationController
  def index
    @races = Race.new
  end
  def show
    @race = Race.find(params[:id])
  end
  def new
    @race = Race.new
  end
  def create
    @races = Race.create!(race_params)
    redirect_to @races
  end
  private
  def race_params
    params.require(:race).permit(:title, :date, :time)
  end
end
