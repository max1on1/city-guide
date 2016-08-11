require 'rails_helper'

RSpec.describe "excursions/show", type: :view do
  before(:each) do
    @excursion = assign(:excursion, Excursion.create!(
      :title => "MyText",
      :phone => 2,
      :duration => 3,
      :imgurl => "MyText",
      :price => "",
      :about => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
