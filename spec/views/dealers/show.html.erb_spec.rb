require 'rails_helper'

RSpec.describe "dealers/show", type: :view do
  before(:each) do
    @dealer = assign(:dealer, Dealer.create!(
      :company_name => "Company Name",
      :contact_number => "Contact Number",
      :street_address => "MyText",
      :suburb => "Suburb",
      :about_us => "MyText",
      :image_data => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Contact Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
