require 'rails_helper'

RSpec.describe "excursions/edit", type: :view do
  before(:each) do
    @excursion = assign(:excursion, Excursion.create!(
      :title => "MyText",
      :phone => 1,
      :duration => 1,
      :imgurl => "MyText",
      :price => "",
      :about => "MyText"
    ))
  end

  it "renders the edit excursion form" do
    render

    assert_select "form[action=?][method=?]", excursion_path(@excursion), "post" do

      assert_select "textarea#excursion_title[name=?]", "excursion[title]"

      assert_select "input#excursion_phone[name=?]", "excursion[phone]"

      assert_select "input#excursion_duration[name=?]", "excursion[duration]"

      assert_select "textarea#excursion_imgurl[name=?]", "excursion[imgurl]"

      assert_select "input#excursion_price[name=?]", "excursion[price]"

      assert_select "textarea#excursion_about[name=?]", "excursion[about]"
    end
  end
end
