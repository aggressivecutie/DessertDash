require 'rails_helper'

RSpec.describe "dealers/new", type: :view do
  before(:each) do
    assign(:dealer, Dealer.new(
      :company_name => "MyString",
      :contact_number => "MyString",
      :street_address => "MyText",
      :suburb => "MyString",
      :about_us => "MyText",
      :image_data => "MyText"
    ))
  end

  it "renders new dealer form" do
    render

    assert_select "form[action=?][method=?]", dealers_path, "post" do

      assert_select "input[name=?]", "dealer[company_name]"

      assert_select "input[name=?]", "dealer[contact_number]"

      assert_select "textarea[name=?]", "dealer[street_address]"

      assert_select "input[name=?]", "dealer[suburb]"

      assert_select "textarea[name=?]", "dealer[about_us]"

      assert_select "textarea[name=?]", "dealer[image_data]"
    end
  end
end
