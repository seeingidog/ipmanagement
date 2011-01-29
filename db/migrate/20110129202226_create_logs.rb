class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.string :level
      t.datetime :created_at
      t.datetime :updated_at
      t.string :type
      t.string :message

      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
