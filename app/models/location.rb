#encoding:utf-8
class Location < ActiveRecord::Base
  attr_accessible :country, :city, :street, :gmaps, :latitude, :longitude, :name

  has_many :infos, :dependent => :destroy

  ####################
  # instance methods #
  ####################
  acts_as_gmappable

  def gmaps4rails_address
    "#{self.street}, #{self.city}, #{self.country}"
  end

  def gmaps4rails_infowindow
    "<h3>#{name}</h3></br><b>温度：#{last_temperature}</b></br><b>湿度：#{last_humidity}</b>"
  end

  def gmaps4rails_sidebar
    "<span>#{name}</span>"
  end

  def last_temperature
    temperature = infos.blank? ? 0 : infos.last.temperature
  end

  def last_humidity
    humidity = infos.blank? ? 0 : infos.last.humidity
  end

  def last_status
    status = infos.blank? ? 'ok' : infos.last.status
  end
end
