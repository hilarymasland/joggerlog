class RacesController < ApplicationController
  def index
    @runner = Runner.find(params[:runner_id])
    @races = @runner.races.all
  end
  def show
    @runner = Runner.find(params[:runner_id])
    @race = @runner.races.find(params[:id])
  end
  def new
    @runner = Runner.find(params[:runner_id])
    @race = @runner.races.new
  end
  def create
    @runner = Runner.find(params[:runner_id])
    @race = @runner.races.create(race_params)

    redirect_to runner_races_path(@runner, @races)
  end
  def edit
    @runner = Runner.find(params[:runner_id])
    @race = @runner.races.find(params[:id])
  end
  def update
    @runner = Runner.find(params[:runner_id])
    @race = @runner.races.find(params[:id])
    @race.update(race_params)

    redirect_to runner_races_path
  end
  def destroy
  @runner = Runner.find(params[:runner_id])
  @race = Race.find(params[:id])
  @race.destroy

  redirect_to runner_races_path
end
  private
  def race_params
    params.require(:race).permit(:title, :date, :time)
  end
end
