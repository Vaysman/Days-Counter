class CreateCrossingDays < ActiveRecord::Migration
  def self.up
    create_table :crossing_days do |t|
      t.integer :user_id
      t.date :when
      t.boolean :out
      t.timestamps
    end
  end
  
  def self.down
    drop_table :crossing_days
  end
end
