require File.dirname(__FILE__) + '/../spec_helper'
 
describe CrossingDaysController do
  fixtures :all
  integrate_views
  
  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
  
  it "create action should render new template when model is invalid" do
    CrossingDay.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end
  
  it "create action should redirect when model is valid" do
    CrossingDay.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(crossing_days_url)
  end
  
  it "destroy action should destroy model and redirect to index action" do
    crossing_day = CrossingDay.first
    delete :destroy, :id => crossing_day
    response.should redirect_to(crossing_days_url)
    CrossingDay.exists?(crossing_day.id).should be_false
  end
  
  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end
end
