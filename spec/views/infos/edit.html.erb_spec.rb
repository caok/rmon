require 'spec_helper'

describe "infos/edit" do
  before(:each) do
    @info = assign(:info, stub_model(Info,
      :location => nil,
      :temperature => "MyString",
      :humidity => "MyString"
    ))
  end

  it "renders the edit info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => infos_path(@info), :method => "post" do
      assert_select "input#info_location", :name => "info[location]"
      assert_select "input#info_temperature", :name => "info[temperature]"
      assert_select "input#info_humidity", :name => "info[humidity]"
    end
  end
end
