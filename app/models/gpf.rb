class Gpf < ActiveRecord::Base
  attr_accessible :cbcount, :farmer_id, :fat, :lbcount, :litconsume, :litgive, :litres, :litsell, :price, :wheresell, :whoconsa, :whoconsb
  belongs_to :farmer

  validates :farmer_id, :presence => true

  def self.for_farmer(id)
    where(farmer_id: id)
  end

  def self.avef_on(date)
      where("date(created_at) = ?", date).average(:fat)
  end

   def self.avel_on(date)
      where("date(created_at) = ?", date).average(:litres)
  end



end

