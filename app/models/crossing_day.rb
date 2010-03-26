class CrossingDay < ActiveRecord::Base
  attr_accessible :when, :out
  
  belongs_to :user
end
