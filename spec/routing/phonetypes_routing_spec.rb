require "spec_helper"

describe PhonetypesController do
  describe "routing" do

    it "routes to #index" do
      get("/phonetypes").should route_to("phonetypes#index")
    end

    it "routes to #new" do
      get("/phonetypes/new").should route_to("phonetypes#new")
    end

    it "routes to #show" do
      get("/phonetypes/1").should route_to("phonetypes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phonetypes/1/edit").should route_to("phonetypes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phonetypes").should route_to("phonetypes#create")
    end

    it "routes to #update" do
      put("/phonetypes/1").should route_to("phonetypes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phonetypes/1").should route_to("phonetypes#destroy", :id => "1")
    end

  end
end
