class User < ActiveRecord::Base
  attr_accessible :email, :name, :orgname, :usertype
end
