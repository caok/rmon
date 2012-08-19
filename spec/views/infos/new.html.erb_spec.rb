require 'spec_helper'

describe "infos/new" do
  before(:each) do
    assign(:info, stub_model(Info,
      :location => nil,
      :temperature => "MyString",
      :humidity => "MyString"
    ).as_new_record)
  end

  it "renders new info form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => infos_path, :method => "post" do
      assert_select "input#info_location", :name => "info[location]"
      assert_select "input#info_temperature", :name => "info[temperature]"
      assert_select "input#info_humidity", :name => "info[humidity]"
    end
  end
end
