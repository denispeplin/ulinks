require 'spec_helper'

describe "forum_links/show" do
  before(:each) do
    @forum_link = assign(:forum_link, stub_model(ForumLink,
      :path => "Path",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Path/)
    rendered.should match(/Text/)
  end
end
