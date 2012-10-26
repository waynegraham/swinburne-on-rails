require 'spec_helper'

describe "witnesses/show" do
  before(:each) do
    @witness = assign(:witness, stub_model(Witness,
      :title => "Title",
      :author => "Author",
      :publisher => "Publisher",
      :pub_place => "Pub Place",
      :year => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Author/)
    rendered.should match(/Publisher/)
    rendered.should match(/Pub Place/)
    rendered.should match(/1/)
  end
end
