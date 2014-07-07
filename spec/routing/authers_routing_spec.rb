require "rails_helper"

RSpec.describe AuthersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/authers").to route_to("authers#index")
    end

    it "routes to #new" do
      expect(:get => "/authers/new").to route_to("authers#new")
    end

    it "routes to #show" do
      expect(:get => "/authers/1").to route_to("authers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/authers/1/edit").to route_to("authers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/authers").to route_to("authers#create")
    end

    it "routes to #update" do
      expect(:put => "/authers/1").to route_to("authers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/authers/1").to route_to("authers#destroy", :id => "1")
    end

  end
end
