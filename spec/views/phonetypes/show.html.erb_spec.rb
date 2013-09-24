require 'spec_helper'

describe "phonetypes/show" do
  before(:each) do
    @phonetype = assign(:phonetype, stub_model(Phonetype))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
