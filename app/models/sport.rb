class Sport < ActiveRecord::Base
  attr_accessible :address, :game, :latitude, :longitude, :needed, :zipcode, :state, :user_id

  geocoded_by :geolocate
  after_validation :geocode

  belongs_to :user
  # validates_numericality_of :needed, :greater_than => 0
  def geolocate
     "#{self.address}"', '"#{self.state}"', '"#{self.zipcode}"
  end

  def self.search(search)
    if search
      #uses active record to search database for gametypes with regular expression
        find(:all, :conditions => ['game LIKE ?', "%#{search}"])
    else
        find(:all)
    end
  end
end
