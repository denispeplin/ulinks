require 'spec_helper'

describe "WatsupLinks" do
  describe "GET /watsup_links" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get watsup_links_path
      response.status.should be(200)
    end
  end
end
