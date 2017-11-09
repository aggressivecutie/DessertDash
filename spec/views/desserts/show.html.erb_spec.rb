require 'rails_helper'

RSpec.describe "desserts/show", type: :view do
  before(:each) do
    @dessert = assign(:dessert, Dessert.create!(
      :title => "Title",
      :price => "9.99",
      :description => "MyText",
      :dealer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
