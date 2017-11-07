require 'rails_helper'

RSpec.describe "dealers/show", type: :view do
  before(:each) do
    @dealer = assign(:dealer, Dealer.create!(
      :co_name => "Co Name",
      :contact_number => "",
      :street_address => "MyText",
      :suburb => "Suburb",
      :about_us => "About Us",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Co Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/About Us/)
    expect(rendered).to match(/Text/)
  end
end
