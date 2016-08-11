require 'rails_helper'

RSpec.describe "cities/edit", type: :view do
  before(:each) do
    @city = assign(:city, City.create!(
      :city => "MyText"
    ))
  end

  it "renders the edit city form" do
    render

    assert_select "form[action=?][method=?]", city_path(@city), "post" do

      assert_select "textarea#city_city[name=?]", "city[city]"
    end
  end
end
