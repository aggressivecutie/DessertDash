require 'rails_helper'

RSpec.describe "dealers/index", type: :view do
  before(:each) do
    assign(:dealers, [
      Dealer.create!(
        :company_name => "Company Name",
        :contact_number => "Contact Number",
        :street_address => "MyText",
        :suburb => "Suburb",
        :about_us => "MyText",
        :image_data => "MyText"
      ),
      Dealer.create!(
        :company_name => "Company Name",
        :contact_number => "Contact Number",
        :street_address => "MyText",
        :suburb => "Suburb",
        :about_us => "MyText",
        :image_data => "MyText"
      )
    ])
  end

  it "renders a list of dealers" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
