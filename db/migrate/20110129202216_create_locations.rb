class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.text :notes
      t.string :name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
