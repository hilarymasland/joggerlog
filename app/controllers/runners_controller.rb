class RunnersController < ApplicationController
  def index
    @runners = Runner.new
  end
  def new
    @runner = Runner.new
  end
  def create
    @runner = Runner.create!(runner_params)
    redirect_to new_race_path(@race)
  end
  def show
    @runner = Runner.find(params[:id])
  end
  private
  def runner_params
    params.require(:runner).permit(:name)
  end
end
