require 'spec_helper'

describe "witnesses/index" do
  before(:each) do
    assign(:witnesses, [
      stub_model(Witness,
        :title => "Title",
        :author => "Author",
        :publisher => "Publisher",
        :pub_place => "Pub Place",
        :year => 1
      ),
      stub_model(Witness,
        :title => "Title",
        :author => "Author",
        :publisher => "Publisher",
        :pub_place => "Pub Place",
        :year => 1
      )
    ])
  end

  it "renders a list of witnesses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
    assert_select "tr>td", :text => "Pub Place".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
