class Gpf < ActiveRecord::Base
  attr_accessible :cbcount, :farmer_id, :fat, :lbcount, :litconsume, :litgive, :litres, :litsell, :price, :wheresell, :whoconsa, :whoconsb
  belongs_to :farmer

  validates :farmer_id, :presence => true
end
