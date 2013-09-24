require "spec_helper"

describe PhonenumbersController do
  describe "routing" do

    it "routes to #index" do
      get("/phonenumbers").should route_to("phonenumbers#index")
    end

    it "routes to #new" do
      get("/phonenumbers/new").should route_to("phonenumbers#new")
    end

    it "routes to #show" do
      get("/phonenumbers/1").should route_to("phonenumbers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phonenumbers/1/edit").should route_to("phonenumbers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phonenumbers").should route_to("phonenumbers#create")
    end

    it "routes to #update" do
      put("/phonenumbers/1").should route_to("phonenumbers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phonenumbers/1").should route_to("phonenumbers#destroy", :id => "1")
    end

  end
end
