class Info < ActiveRecord::Base
  attr_accessible :humidity, :temperature, :location_id, :status, :happened_at, :longitude, :latitude

  belongs_to :location

  validates_presence_of :location_id, :humidity, :temperature, :status, :happened_at
end
