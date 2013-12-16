class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :created_at

  belongs_to :photo

end
