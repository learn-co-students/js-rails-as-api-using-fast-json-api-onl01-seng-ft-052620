class Location < ApplicationRecord
    has_many :sightings
    has_many :birds, through: :sightings
    #nothing to change here
end
