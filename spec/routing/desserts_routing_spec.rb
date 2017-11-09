require "rails_helper"

RSpec.describe DessertsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/desserts").to route_to("desserts#index")
    end

    it "routes to #new" do
      expect(:get => "/desserts/new").to route_to("desserts#new")
    end

    it "routes to #show" do
      expect(:get => "/desserts/1").to route_to("desserts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/desserts/1/edit").to route_to("desserts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/desserts").to route_to("desserts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/desserts/1").to route_to("desserts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/desserts/1").to route_to("desserts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/desserts/1").to route_to("desserts#destroy", :id => "1")
    end

  end
end
