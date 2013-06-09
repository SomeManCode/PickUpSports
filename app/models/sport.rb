class Sport < ActiveRecord::Base
  attr_accessible :address, :game, :latitude, :longitude, :needed, :zipcode, :state

  geocoded_by :geolocate

  def geolocate
     "#{self.address}"', '"#{self.state}"', '"#{self.zipcode}"
  end

end
