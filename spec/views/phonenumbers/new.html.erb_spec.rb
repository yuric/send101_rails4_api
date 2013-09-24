require 'spec_helper'

describe "phonenumbers/new" do
  before(:each) do
    assign(:phonenumber, stub_model(Phonenumber).as_new_record)
  end

  it "renders new phonenumber form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phonenumbers_path, "post" do
    end
  end
end
