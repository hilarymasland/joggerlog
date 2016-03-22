class RacesController < ApplicationController
  def index
    @runner = Runner.find(params[:runner_id])
    @races = @runner.races.all
  end
  def show
    @runner = Runner.find(params[:runner_id])
    @race = @runner.races.create(race_params)
  end
  def new
    @runner = Runner.find(params[:runner_id])
    @race = Race.new
  end
  def create
    @runner = Runner.find(params[:runner_id])
    @race = @runner.races.create(race_params)

    redirect_to runner_races_path(@runner, @races)
  end
  private
  def race_params
    params.require(:race).permit(:title, :date, :time)
  end
end
