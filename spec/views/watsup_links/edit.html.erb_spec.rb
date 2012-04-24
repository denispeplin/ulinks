require 'spec_helper'

describe "watsup_links/edit" do
  before(:each) do
    @watsup_link = assign(:watsup_link, stub_model(WatsupLink,
      :path => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit watsup_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => watsup_links_path(@watsup_link), :method => "post" do
      assert_select "input#watsup_link_path", :name => "watsup_link[path]"
      assert_select "input#watsup_link_text", :name => "watsup_link[text]"
    end
  end
end
