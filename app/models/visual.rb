class Visual < ActiveRecord::Base
  attr_accessible :topic, :user_id, :vizname
  belongs_to :user

  validates :user_id, :presence => true

end
