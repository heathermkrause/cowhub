class Group < ActiveRecord::Base
  attr_accessible :district, :lgid, :perfemale, :phase, :totalpart, :upazilla

  has_many :farmers
  has_many :gpfs, :through => :farmers

  def self.average_fat(date)
    gpfs.where("date(created_at) = ?", date).average(:fat)
  end

 end
