class Vlan < ActiveRecord::Base
  has_many :subnets
  has_many :allocations
end
