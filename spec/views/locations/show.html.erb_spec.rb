require 'spec_helper'

describe "locations/show" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :name => "Name",
      :address => "Address",
      :latitude => 1.5,
      :longitude => 1.5,
      :temperature => "Temperature",
      :humidity => "Humidity"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/Temperature/)
    rendered.should match(/Humidity/)
  end
end
