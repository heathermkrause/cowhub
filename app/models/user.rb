class User < ActiveRecord::Base
  attr_accessible :email, :name, :orgname, :usertype
  has_many :visuals

  validates :email, :presence => true
  validates :name, :presence => true
  validates :usertype, :presence => true
end
