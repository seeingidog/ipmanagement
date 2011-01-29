class CreateSubnets < ActiveRecord::Migration
  def self.up
    create_table :subnets do |t|
      t.integer :vlan_id
      t.string :range
      t.string :gateway
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :subnets
  end
end
