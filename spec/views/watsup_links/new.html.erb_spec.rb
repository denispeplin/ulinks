require 'spec_helper'

describe "watsup_links/new" do
  before(:each) do
    assign(:watsup_link, stub_model(WatsupLink,
      :path => "MyString",
      :text => "MyString"
    ).as_new_record)
  end

  it "renders new watsup_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => watsup_links_path, :method => "post" do
      assert_select "input#watsup_link_path", :name => "watsup_link[path]"
      assert_select "input#watsup_link_text", :name => "watsup_link[text]"
    end
  end
end
