require "rails_helper"

RSpec.describe PorjectsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/porjects").to route_to("porjects#index")
    end

    it "routes to #new" do
      expect(:get => "/porjects/new").to route_to("porjects#new")
    end

    it "routes to #show" do
      expect(:get => "/porjects/1").to route_to("porjects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/porjects/1/edit").to route_to("porjects#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/porjects").to route_to("porjects#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/porjects/1").to route_to("porjects#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/porjects/1").to route_to("porjects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/porjects/1").to route_to("porjects#destroy", :id => "1")
    end

  end
end
