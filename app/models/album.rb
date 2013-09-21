class Album < ActiveRecord::Base
  attr_accessible :title

  belongs_to :travel
  has_many :photos
end
