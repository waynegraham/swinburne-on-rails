require 'spec_helper'

describe "witnesses/edit" do
  before(:each) do
    @witness = assign(:witness, stub_model(Witness,
      :title => "MyString",
      :author => "MyString",
      :publisher => "MyString",
      :pub_place => "MyString",
      :year => 1
    ))
  end

  it "renders the edit witness form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => witnesses_path(@witness), :method => "post" do
      assert_select "input#witness_title", :name => "witness[title]"
      assert_select "input#witness_author", :name => "witness[author]"
      assert_select "input#witness_publisher", :name => "witness[publisher]"
      assert_select "input#witness_pub_place", :name => "witness[pub_place]"
      assert_select "input#witness_year", :name => "witness[year]"
    end
  end
end
