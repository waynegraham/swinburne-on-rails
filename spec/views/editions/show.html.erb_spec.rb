require 'spec_helper'

describe "editions/show" do
  before(:each) do
    @edition = assign(:edition, stub_model(Edition,
      :title => "Title",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
  end
end
