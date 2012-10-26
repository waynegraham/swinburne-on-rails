require 'spec_helper'

describe "openings/index" do
  before(:each) do
    assign(:openings, [
      stub_model(Opening),
      stub_model(Opening)
    ])
  end

  it "renders a list of openings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
