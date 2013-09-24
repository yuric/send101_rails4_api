require 'spec_helper'

describe "phonenumbers/show" do
  before(:each) do
    @phonenumber = assign(:phonenumber, stub_model(Phonenumber))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
