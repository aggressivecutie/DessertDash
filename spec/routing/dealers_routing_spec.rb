require "rails_helper"

RSpec.describe DealersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dealers").to route_to("dealers#index")
    end

    it "routes to #new" do
      expect(:get => "/dealers/new").to route_to("dealers#new")
    end

    it "routes to #show" do
      expect(:get => "/dealers/1").to route_to("dealers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dealers/1/edit").to route_to("dealers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dealers").to route_to("dealers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dealers/1").to route_to("dealers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dealers/1").to route_to("dealers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dealers/1").to route_to("dealers#destroy", :id => "1")
    end

  end
end
