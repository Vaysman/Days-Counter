class CrossingDay < ActiveRecord::Base
  attr_accessible :date_of, :in_est
  
  belongs_to :user
  
  def self.ordered_by_date
    all(:order=>'date_of, in_est')
  end
end
