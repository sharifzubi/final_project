class Photo < ActiveRecord::Base
  attr_accessible :title, :image, :user_id, :created_at
  # acts_as_voteable
  # acts_as_taggable

  ### ASSOCIATIONS
  belongs_to :user

  ### CARRIERWAVE
  mount_uploader :image, ImageUploader

end
