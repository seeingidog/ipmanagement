class CreateAllocations < ActiveRecord::Migration
  def self.up
    create_table :allocations do |t|
      t.integer :vlan_id
      t.string :range
      t.integer :subnet_id
      t.integer :device_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :allocations
  end
end
