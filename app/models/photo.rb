class Photo < ActiveRecord::Base
  attr_accessible :comment, :title

  belongs_to :user
  belongs_to :album
  has_one :travel

  has_attached_file :image, :style => { :thumb => ["64x64", :png] }
end
