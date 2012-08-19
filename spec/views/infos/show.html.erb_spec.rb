require 'spec_helper'

describe "infos/show" do
  before(:each) do
    @info = assign(:info, stub_model(Info,
      :location => nil,
      :temperature => "Temperature",
      :humidity => "Humidity"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Temperature/)
    rendered.should match(/Humidity/)
  end
end
