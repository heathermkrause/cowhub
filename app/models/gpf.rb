class Gpf < ActiveRecord::Base
  attr_accessible :cbcount, :farmer_id, :fat, :lbcount, :litconsume, :litgive, :litres, :litsell, :price, :wheresell, :whoconsa, :whoconsb
  belongs_to :farmer

  validates :farmer_id, :presence => true

  scope :farmer1, where(:farmer_id =>1)
  scope :farmer2, where(:farmer_id =>2)
  scope :farmer3, where(:farmer_id =>"3")
  scope :farmer4, where(:farmer_id =>"4")


  def self.ave_on(date)
      where("date(created_at) = ?", date).average(:fat)
  end

   def self.avel_on(date)
      where("date(created_at) = ?", date).average(:litres)
  end

end

