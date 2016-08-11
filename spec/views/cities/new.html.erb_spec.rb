require 'rails_helper'

RSpec.describe "cities/new", type: :view do
  before(:each) do
    assign(:city, City.new(
      :city => "MyText"
    ))
  end

  it "renders new city form" do
    render

    assert_select "form[action=?][method=?]", cities_path, "post" do

      assert_select "textarea#city_city[name=?]", "city[city]"
    end
  end
end
