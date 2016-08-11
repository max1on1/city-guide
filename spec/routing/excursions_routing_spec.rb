require "rails_helper"

RSpec.describe ExcursionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/excursions").to route_to("excursions#index")
    end

    it "routes to #new" do
      expect(:get => "/excursions/new").to route_to("excursions#new")
    end

    it "routes to #show" do
      expect(:get => "/excursions/1").to route_to("excursions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/excursions/1/edit").to route_to("excursions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/excursions").to route_to("excursions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/excursions/1").to route_to("excursions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/excursions/1").to route_to("excursions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/excursions/1").to route_to("excursions#destroy", :id => "1")
    end

  end
end
