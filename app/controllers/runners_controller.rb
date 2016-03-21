class RunnersController < ApplicationController
  def index
    @runners = Runner.all
  end
  def new
    @runner = Runner.new
  end
  def create
    @runner = Runner.new
  end
end
