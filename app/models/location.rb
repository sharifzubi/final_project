class Location < ActiveRecord::Base
  attr_accessible :name, :latitude, :longtitude, :created_at

  has_many :photos
  belongs_to :photo

end