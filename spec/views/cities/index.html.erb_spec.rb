require 'rails_helper'

RSpec.describe "cities/index", type: :view do
  before(:each) do
    assign(:cities, [
      City.create!(
        :city => "MyText"
      ),
      City.create!(
        :city => "MyText"
      )
    ])
  end

  it "renders a list of cities" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
