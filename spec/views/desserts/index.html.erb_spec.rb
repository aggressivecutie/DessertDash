require 'rails_helper'

RSpec.describe "desserts/index", type: :view do
  before(:each) do
    assign(:desserts, [
      Dessert.create!(
        :title => "Title",
        :price => "9.99",
        :description => "MyText",
        :dealer_id => 2
      ),
      Dessert.create!(
        :title => "Title",
        :price => "9.99",
        :description => "MyText",
        :dealer_id => 2
      )
    ])
  end

  it "renders a list of desserts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
