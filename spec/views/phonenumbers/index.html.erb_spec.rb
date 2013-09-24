require 'spec_helper'

describe "phonenumbers/index" do
  before(:each) do
    assign(:phonenumbers, [
      stub_model(Phonenumber),
      stub_model(Phonenumber)
    ])
  end

  it "renders a list of phonenumbers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
