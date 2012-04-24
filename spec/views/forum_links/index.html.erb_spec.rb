require 'spec_helper'

describe "forum_links/index" do
  before(:each) do
    assign(:forum_links, [
      stub_model(ForumLink,
        :path => "Path",
        :text => "Text"
      ),
      stub_model(ForumLink,
        :path => "Path",
        :text => "Text"
      )
    ])
  end

  it "renders a list of forum_links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
