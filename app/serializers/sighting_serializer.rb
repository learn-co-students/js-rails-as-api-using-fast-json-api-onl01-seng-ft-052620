class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :bird, :location
end
