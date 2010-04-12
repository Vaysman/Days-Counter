class RenameOutColumnInCrossingDayModelToInEst < ActiveRecord::Migration
  def self.up
  	rename_column :crossing_days, :out, :in_est
  end

  def self.down
  	rename_column :crossing_days, :in_est, :out
  end
end
