class CreateVlans < ActiveRecord::Migration
  def self.up
    create_table :vlans do |t|
      t.integer :vlan_number
      t.integer :location_id
      t.text :notes
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :vlans
  end
end
