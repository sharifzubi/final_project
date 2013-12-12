class Location < ActiveRecord::Base
  attr_accessible :name, :latitude, :longitude, :created_at

  belongs_to :photo

end
