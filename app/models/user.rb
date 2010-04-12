class User < ActiveRecord::Base
  acts_as_authentic

  attr_accessible :username, :email, :password, :password_confirmation

  has_many :crossing_days

  def abroad?
  	!(crossing_days.empty? || !crossing_days.last(:order=>'date_of, in_est').in_est)
  end
  
  def should_stay_in_estonia
    180
  end
  
  def days_in_estonia
    return 0 if crossing_days.empty?
    list = crossing_days.ordered_by_date.collect(&:date_of).in_groups_of(2)
    list.last[1] ||= Date.today
    list.inject(0) {|days, pair| days + 1 + (pair[1] - pair[0]).to_i}
  end
  
  def days_need
    should_stay_in_estonia - days_in_estonia
  end
end
