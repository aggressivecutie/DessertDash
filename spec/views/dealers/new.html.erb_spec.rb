require 'rails_helper'

RSpec.describe "dealers/new", type: :view do
  before(:each) do
    assign(:dealer, Dealer.new(
      :co_name => "MyString",
      :contact_number => "",
      :street_address => "MyText",
      :suburb => "MyString",
      :about_us => "MyString",
      :text => "MyString"
    ))
  end

  it "renders new dealer form" do
    render

    assert_select "form[action=?][method=?]", dealers_path, "post" do

      assert_select "input[name=?]", "dealer[co_name]"

      assert_select "input[name=?]", "dealer[contact_number]"

      assert_select "textarea[name=?]", "dealer[street_address]"

      assert_select "input[name=?]", "dealer[suburb]"

      assert_select "input[name=?]", "dealer[about_us]"

      assert_select "input[name=?]", "dealer[text]"
    end
  end
end
