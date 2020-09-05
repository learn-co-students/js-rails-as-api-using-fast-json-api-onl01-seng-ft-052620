class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species, :sightings, :locations 
end
