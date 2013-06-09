class Sport < ActiveRecord::Base
  attr_accessible :address, :game, :latitude, :longitude, :needed, :zipcode, :state
end
