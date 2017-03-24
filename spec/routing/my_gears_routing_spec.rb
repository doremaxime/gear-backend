require "rails_helper"

RSpec.describe MyGearsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/my_gears").to route_to("my_gears#index")
    end

    it "routes to #new" do
      expect(:get => "/my_gears/new").to route_to("my_gears#new")
    end

    it "routes to #show" do
      expect(:get => "/my_gears/1").to route_to("my_gears#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/my_gears/1/edit").to route_to("my_gears#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/my_gears").to route_to("my_gears#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_gears/1").to route_to("my_gears#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_gears/1").to route_to("my_gears#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_gears/1").to route_to("my_gears#destroy", :id => "1")
    end

  end
end
