class Sport < ActiveRecord::Base
  attr_accessible :address, :game, :latitude, :longitude, :needed, :zipcode, :state

  geocoded_by :geolocate
  after_validation :geocode

  def geolocate
     "#{self.address}"', '"#{self.state}"', '"#{self.zipcode}"
  end

end
