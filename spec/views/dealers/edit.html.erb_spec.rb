require 'rails_helper'

RSpec.describe "dealers/edit", type: :view do
  before(:each) do
    @dealer = assign(:dealer, Dealer.create!(
      :co_name => "MyString",
      :contact_number => "",
      :street_address => "MyText",
      :suburb => "MyString",
      :about_us => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit dealer form" do
    render

    assert_select "form[action=?][method=?]", dealer_path(@dealer), "post" do

      assert_select "input[name=?]", "dealer[co_name]"

      assert_select "input[name=?]", "dealer[contact_number]"

      assert_select "textarea[name=?]", "dealer[street_address]"

      assert_select "input[name=?]", "dealer[suburb]"

      assert_select "input[name=?]", "dealer[about_us]"

      assert_select "input[name=?]", "dealer[text]"
    end
  end
end
