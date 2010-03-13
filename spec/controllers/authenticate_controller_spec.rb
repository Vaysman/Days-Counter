require 'spec_helper'

describe AuthenticateController do

  #Delete these examples and add some real ones
  it "should use AuthenticateController" do
    controller.should be_an_instance_of(AuthenticateController)
  end


  describe "POST 'login'" do
    it "should be successful" do
      post 'login'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "should be successful" do
      get 'logout'
      response.should be_success
    end
  end

  describe "POST 'singup'" do
    it "should be successful" do
      post 'singup'
      response.should be_success
    end
  end
end
