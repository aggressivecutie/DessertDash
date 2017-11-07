require 'rails_helper'

RSpec.describe "dealers/index", type: :view do
  before(:each) do
    assign(:dealers, [
      Dealer.create!(
        :co_name => "Co Name",
        :contact_number => "",
        :street_address => "MyText",
        :suburb => "Suburb",
        :about_us => "About Us",
        :text => "Text"
      ),
      Dealer.create!(
        :co_name => "Co Name",
        :contact_number => "",
        :street_address => "MyText",
        :suburb => "Suburb",
        :about_us => "About Us",
        :text => "Text"
      )
    ])
  end

  it "renders a list of dealers" do
    render
    assert_select "tr>td", :text => "Co Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "About Us".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
