class Photo < ActiveRecord::Base
  attr_accessible :title, :image, :remote_image_url, :user_id, :created_at, :memories_attributes
  # acts_as_voteable
  # acts_as_taggable

  ### ASSOCIATIONS
  belongs_to :user
  has_many :memories

  ### NESTED MODEL FORMS
  accepts_nested_attributes_for :memories

  ### CARRIERWAVE
  mount_uploader :image, ImageUploader

end
