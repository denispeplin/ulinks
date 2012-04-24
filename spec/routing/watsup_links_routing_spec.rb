require "spec_helper"

describe WatsupLinksController do
  describe "routing" do

    it "routes to #index" do
      get("/watsup_links").should route_to("watsup_links#index")
    end

    it "routes to #new" do
      get("/watsup_links/new").should route_to("watsup_links#new")
    end

    it "routes to #show" do
      get("/watsup_links/1").should route_to("watsup_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/watsup_links/1/edit").should route_to("watsup_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/watsup_links").should route_to("watsup_links#create")
    end

    it "routes to #update" do
      put("/watsup_links/1").should route_to("watsup_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/watsup_links/1").should route_to("watsup_links#destroy", :id => "1")
    end

  end
end
