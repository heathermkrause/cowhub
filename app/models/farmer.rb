class Farmer < ActiveRecord::Base
  attr_accessible :group_id, :name, :sex, :farmer_number
  belongs_to :group
  has_many :gpfs, :dependent => :destroy

  validates :farmer_number, :presence => true

end
