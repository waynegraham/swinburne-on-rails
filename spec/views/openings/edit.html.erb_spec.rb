require 'spec_helper'

describe "openings/edit" do
  before(:each) do
    @opening = assign(:opening, stub_model(Opening))
  end

  it "renders the edit opening form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => openings_path(@opening), :method => "post" do
    end
  end
end
