require "rails_helper"

RSpec.describe TwigsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/twigs").to route_to("twigs#index")
    end


    it "routes to #show" do
      expect(:get => "/twigs/1").to route_to("twigs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/twigs").to route_to("twigs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/twigs/1").to route_to("twigs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/twigs/1").to route_to("twigs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/twigs/1").to route_to("twigs#destroy", :id => "1")
    end

  end
end
