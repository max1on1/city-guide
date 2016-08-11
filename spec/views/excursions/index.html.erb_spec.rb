require 'rails_helper'

RSpec.describe "excursions/index", type: :view do
  before(:each) do
    assign(:excursions, [
      Excursion.create!(
        :title => "MyText",
        :phone => 2,
        :duration => 3,
        :imgurl => "MyText",
        :price => "",
        :about => "MyText"
      ),
      Excursion.create!(
        :title => "MyText",
        :phone => 2,
        :duration => 3,
        :imgurl => "MyText",
        :price => "",
        :about => "MyText"
      )
    ])
  end

  it "renders a list of excursions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
