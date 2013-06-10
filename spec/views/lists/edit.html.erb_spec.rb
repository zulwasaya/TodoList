require 'spec_helper'

describe "lists/edit" do
  before(:each) do
    @list = assign(:list, stub_model(List,
      :description => "MyText",
      :priority => 1
    ))
  end

  it "renders the edit list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", list_path(@list), "post" do
      assert_select "textarea#list_description[name=?]", "list[description]"
      assert_select "input#list_priority[name=?]", "list[priority]"
    end
  end
end
