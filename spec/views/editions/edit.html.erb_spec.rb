require 'spec_helper'

describe "editions/edit" do
  before(:each) do
    @edition = assign(:edition, stub_model(Edition,
      :title => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit edition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => editions_path(@edition), :method => "post" do
      assert_select "input#edition_title", :name => "edition[title]"
      assert_select "input#edition_author", :name => "edition[author]"
    end
  end
end
