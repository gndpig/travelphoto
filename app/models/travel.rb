class Travel < ActiveRecord::Base
  attr_accessible :enddate, :startdate, :title

  belongs_to :user
  has_many :albums
  belogs_to :cover_photo, :class_name => "Photo", :foreign_key => "photo_id"
end
