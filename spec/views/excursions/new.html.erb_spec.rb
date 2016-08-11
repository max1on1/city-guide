require 'rails_helper'

RSpec.describe "excursions/new", type: :view do
  before(:each) do
    assign(:excursion, Excursion.new(
      :title => "MyText",
      :phone => 1,
      :duration => 1,
      :imgurl => "MyText",
      :price => "",
      :about => "MyText"
    ))
  end

  it "renders new excursion form" do
    render

    assert_select "form[action=?][method=?]", excursions_path, "post" do

      assert_select "textarea#excursion_title[name=?]", "excursion[title]"

      assert_select "input#excursion_phone[name=?]", "excursion[phone]"

      assert_select "input#excursion_duration[name=?]", "excursion[duration]"

      assert_select "textarea#excursion_imgurl[name=?]", "excursion[imgurl]"

      assert_select "input#excursion_price[name=?]", "excursion[price]"

      assert_select "textarea#excursion_about[name=?]", "excursion[about]"
    end
  end
end
