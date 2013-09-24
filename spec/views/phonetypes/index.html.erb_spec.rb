require 'spec_helper'

describe "phonetypes/index" do
  before(:each) do
    assign(:phonetypes, [
      stub_model(Phonetype),
      stub_model(Phonetype)
    ])
  end

  it "renders a list of phonetypes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
