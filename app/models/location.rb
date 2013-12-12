class Location < ActiveRecord::Base
  attr_accessible :name, :latitude, :longitude, :created_at

  has_many :photos
  belongs_to :photo

end
