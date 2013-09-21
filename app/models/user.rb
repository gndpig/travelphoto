class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable 
  # attr_accessible :title, :body

  has_many :photos
  has_many :friends
  has_many :following, :through => :friends
end
