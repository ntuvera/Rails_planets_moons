class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    planet = Planet.new(planet_params)
    planet.save
    redirect_to 'planets/#{planet.id}'
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    planet = Planet.find(params[:id])
    planet.update(planet_params)
    redirect_to "/planets/#{planet.id}"
  end

  def destroy
    Planet.delete(params[:id])
    redirect_to root_path
  end

  private
    def planet_params
      params.require(:planet).permit(:name, :image, :diameter, :mass)
    end
end
