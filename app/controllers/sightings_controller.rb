class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end

  def index 
    sightings = Sighting.all
    rebder json: SightingSerializer.new(sightings)
  end 
end
