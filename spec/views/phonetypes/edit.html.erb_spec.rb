require 'spec_helper'

describe "phonetypes/edit" do
  before(:each) do
    @phonetype = assign(:phonetype, stub_model(Phonetype))
  end

  it "renders the edit phonetype form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", phonetype_path(@phonetype), "post" do
    end
  end
end
