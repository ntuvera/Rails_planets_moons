class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    planet = Planet.new(planet_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def planet_params
      params.require(:planet).permit(:name, :image, :diameter, :mass)
    end
end
