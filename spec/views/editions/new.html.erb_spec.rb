require 'spec_helper'

describe "editions/new" do
  before(:each) do
    assign(:edition, stub_model(Edition,
      :title => "MyString",
      :author => "MyString"
    ).as_new_record)
  end

  it "renders new edition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => editions_path, :method => "post" do
      assert_select "input#edition_title", :name => "edition[title]"
      assert_select "input#edition_author", :name => "edition[author]"
    end
  end
end
