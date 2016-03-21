class RacesController < ApplicationController
  def index
    @races = Race.all
  end
  def show
    @race = Race.find(params[:id])
  end
  def new
    @races = Race.all
  end
end
