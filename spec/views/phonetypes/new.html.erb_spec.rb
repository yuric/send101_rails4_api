require 'spec_helper'

describe "phonetypes/new" do
  before(:each) do
    assign(:phonetype, stub_model(Phonetype).as_new_record)
  end

  it "renders new phonetype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phonetypes_path, "post" do
    end
  end
end
