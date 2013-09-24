require 'spec_helper'

describe "phonenumbers/edit" do
  before(:each) do
    @phonenumber = assign(:phonenumber, stub_model(Phonenumber))
  end

  it "renders the edit phonenumber form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phonenumber_path(@phonenumber), "post" do
    end
  end
end
