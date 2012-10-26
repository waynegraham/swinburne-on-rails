require 'spec_helper'

describe "editions/index" do
  before(:each) do
    assign(:editions, [
      stub_model(Edition,
        :title => "Title",
        :author => "Author"
      ),
      stub_model(Edition,
        :title => "Title",
        :author => "Author"
      )
    ])
  end

  it "renders a list of editions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
