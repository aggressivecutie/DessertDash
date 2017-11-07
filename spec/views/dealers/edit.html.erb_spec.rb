require 'rails_helper'

RSpec.describe "dealers/edit", type: :view do
  before(:each) do
    @dealer = assign(:dealer, Dealer.create!(
      :company_name => "MyString",
      :contact_number => "MyString",
      :street_address => "MyText",
      :suburb => "MyString",
      :about_us => "MyText",
      :image_data => "MyText"
    ))
  end

  it "renders the edit dealer form" do
    render

    assert_select "form[action=?][method=?]", dealer_path(@dealer), "post" do

      assert_select "input[name=?]", "dealer[company_name]"

      assert_select "input[name=?]", "dealer[contact_number]"

      assert_select "textarea[name=?]", "dealer[street_address]"

      assert_select "input[name=?]", "dealer[suburb]"

      assert_select "textarea[name=?]", "dealer[about_us]"

      assert_select "textarea[name=?]", "dealer[image_data]"
    end
  end
end
