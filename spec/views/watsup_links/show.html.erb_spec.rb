require 'spec_helper'

describe "watsup_links/show" do
  before(:each) do
    @watsup_link = assign(:watsup_link, stub_model(WatsupLink,
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
