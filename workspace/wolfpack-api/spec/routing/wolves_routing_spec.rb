require "rails_helper"

RSpec.describe WolvesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/wolves").to route_to("wolves#index")
    end

    it "routes to #show" do
      expect(:get => "/wolves/1").to route_to("wolves#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/wolves").to route_to("wolves#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wolves/1").to route_to("wolves#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wolves/1").to route_to("wolves#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wolves/1").to route_to("wolves#destroy", :id => "1")
    end
  end
end
