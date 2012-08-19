require 'spec_helper'

describe "infos/index" do
  before(:each) do
    assign(:infos, [
      stub_model(Info,
        :location => nil,
        :temperature => "Temperature",
        :humidity => "Humidity"
      ),
      stub_model(Info,
        :location => nil,
        :temperature => "Temperature",
        :humidity => "Humidity"
      )
    ])
  end

  it "renders a list of infos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Temperature".to_s, :count => 2
    assert_select "tr>td", :text => "Humidity".to_s, :count => 2
  end
end
