require 'spec_helper'

describe "locations/index" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :temperature => "Temperature",
        :humidity => "Humidity"
      ),
      stub_model(Location,
        :name => "Name",
        :address => "Address",
        :latitude => 1.5,
        :longitude => 1.5,
        :temperature => "Temperature",
        :humidity => "Humidity"
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Temperature".to_s, :count => 2
    assert_select "tr>td", :text => "Humidity".to_s, :count => 2
  end
end
