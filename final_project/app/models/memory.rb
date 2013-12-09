class Memory < ActiveRecord::Base
  attr_accessible :text, :created_at

  belongs_to :user
  belongs_to :photo
end
