require 'rails_helper'

RSpec.describe "desserts/new", type: :view do
  before(:each) do
    assign(:dessert, Dessert.new(
      :title => "MyString",
      :price => "9.99",
      :description => "MyText",
      :dealer_id => 1
    ))
  end

  it "renders new dessert form" do
    render

    assert_select "form[action=?][method=?]", desserts_path, "post" do

      assert_select "input[name=?]", "dessert[title]"

      assert_select "input[name=?]", "dessert[price]"

      assert_select "textarea[name=?]", "dessert[description]"

      assert_select "input[name=?]", "dessert[dealer_id]"
    end
  end
end
