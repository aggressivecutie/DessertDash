require 'rails_helper'

RSpec.describe "desserts/edit", type: :view do
  before(:each) do
    @dessert = assign(:dessert, Dessert.create!(
      :title => "MyString",
      :price => "9.99",
      :description => "MyText",
      :dealer_id => 1
    ))
  end

  it "renders the edit dessert form" do
    render

    assert_select "form[action=?][method=?]", dessert_path(@dessert), "post" do

      assert_select "input[name=?]", "dessert[title]"

      assert_select "input[name=?]", "dessert[price]"

      assert_select "textarea[name=?]", "dessert[description]"

      assert_select "input[name=?]", "dessert[dealer_id]"
    end
  end
end
