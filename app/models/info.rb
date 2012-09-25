#encoding:utf-8
class Info < ActiveRecord::Base
  attr_accessible :humidity, :temperature, :location_id, :status, :happened_at, :longitude, :latitude, :nitrogen, :phosphoru, :potassium, :gmaps

  validates_presence_of :humidity, :temperature, :status, :happened_at

  ####################
  # instance methods #
  ####################
  acts_as_gmappable

  #def gmaps4rails_address
    #"#{self.street}, #{self.city}, #{self.country}"
  #end

  def gmaps4rails_infowindow
    "<h3>#{id}</h3></br><b>温度：#{temperature}</b></br><b>湿度：#{humidity}</b>"
  end

  def gmaps4rails_sidebar
    "<span>#{id}经度：#{longitude}纬度：#{latitude}</span>"
  end
end
