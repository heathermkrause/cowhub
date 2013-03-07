class Gpf < ActiveRecord::Base
  attr_accessible :cbcount, :farmer_id, :fat, :lbcount, :litconsume, :litgive, :litres, :litsell, :price, :wheresell, :whoconsa, :whoconsb
  belongs_to :farmer

  validates :farmer_id, :presence => true


  def self.ave_on(date)
      where("date(created_at) = ?", date).average(:fat)
  end

end

