class Photo < ActiveRecord::Base
  attr_accessible :title, :image, :user_id, :created_at
  # acts_as_voteable
  # acts_as_taggable

  ### ASSOCIATIONS
  belongs_to :user
  has_many :memories

  ### NESTED MODEL FORMS
  # accepts_nested_attributes_for :memories, :reject_if => lambda { |a| a[:title].blank? }

  ### CARRIERWAVE
  mount_uploader :image, ImageUploader

end
