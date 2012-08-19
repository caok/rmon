#encoding:utf-8
class Location < ActiveRecord::Base
  attr_accessible :country, :city, :street, :gmaps, :latitude, :longitude, :name

  has_many :infos, :dependent => :destroy

  acts_as_gmappable

  def gmaps4rails_address
    "#{self.street}, #{self.city}, #{self.country}"
  end

  def gmaps4rails_infowindow
    temperature = infos.blank? ? 0 : infos.last.temperature
    humidity = infos.blank? ? 0 : infos.last.humidity
    "<h3>#{name}</h3></br><b>温度：#{temperature}</b></br><b>湿度：#{humidity}</b>"
  end
end
