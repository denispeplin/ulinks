require 'spec_helper'

describe "forum_links/edit" do
  before(:each) do
    @forum_link = assign(:forum_link, stub_model(ForumLink,
      :path => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit forum_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forum_links_path(@forum_link), :method => "post" do
      assert_select "input#forum_link_path", :name => "forum_link[path]"
      assert_select "input#forum_link_text", :name => "forum_link[text]"
    end
  end
end
