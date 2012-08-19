class Info < ActiveRecord::Base
  attr_accessible :humidity, :temperature, :location_id, :status, :happened_at

  belongs_to :location
end
