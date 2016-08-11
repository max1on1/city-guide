require 'rails_helper'

RSpec.describe "Excursions", type: :request do
  describe "GET /excursions" do
    it "works! (now write some real specs)" do
      get excursions_path
      expect(response).to have_http_status(200)
    end
  end
end
