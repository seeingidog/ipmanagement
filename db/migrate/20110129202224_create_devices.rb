class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.text :notes
      t.string :name
      t.integer :account_id
      t.integer :location_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
