class Farmer < ActiveRecord::Base
  attr_accessible :group_id, :name, :sex, :farmer_number, :lgid
  belongs_to :group
  has_many :gpfs, :dependent => :destroy

  validates :farmer_number, :presence => true

  before_validation :update_group_id

  def update_group_id
    group_id = Group.find_by_gpfid(self.gpfid)
  end
end
