class Vlan < ActiveRecord::Base
  has_many :subnets
end
