class Group < ActiveRecord::Base
  attr_accessible :district, :lgid, :perfemale, :phase, :totalpart, :upazilla


  validates :lgid, :presence => true

  def farmers
    Farmer.where(lgid: lgid)
  end
end
