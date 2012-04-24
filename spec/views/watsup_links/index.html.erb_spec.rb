require 'spec_helper'

describe "watsup_links/index" do
  before(:each) do
    assign(:watsup_links, [
      stub_model(WatsupLink,
        :path => "Path",
        :text => "Text"
      ),
      stub_model(WatsupLink,
        :path => "Path",
        :text => "Text"
      )
    ])
  end

  it "renders a list of watsup_links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
