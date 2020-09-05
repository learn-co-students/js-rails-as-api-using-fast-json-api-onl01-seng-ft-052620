class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
  def Index
    sightings = Sighting.all 
    render json: SightingSerializer.new(sightings)
  end
end
