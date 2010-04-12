class ChangeCrossingDays < ActiveRecord::Migration
  def self.up
    change_table :crossing_days do |t|
      t.rename :when, :date_of
    end
  end

  def self.down
    change_table :crossing_days do |t|
      t.rename :date_of, :when
    end
  end
end
