require "spec_helper"

describe ForumLinksController do
  describe "routing" do

    it "routes to #index" do
      get("/forum_links").should route_to("forum_links#index")
    end

    it "routes to #new" do
      get("/forum_links/new").should route_to("forum_links#new")
    end

    it "routes to #show" do
      get("/forum_links/1").should route_to("forum_links#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forum_links/1/edit").should route_to("forum_links#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forum_links").should route_to("forum_links#create")
    end

    it "routes to #update" do
      put("/forum_links/1").should route_to("forum_links#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forum_links/1").should route_to("forum_links#destroy", :id => "1")
    end

  end
end
