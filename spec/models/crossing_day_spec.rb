require File.dirname(__FILE__) + '/../spec_helper'

describe CrossingDay do
  it "should be valid" do
    CrossingDay.new.should be_valid
  end
end
