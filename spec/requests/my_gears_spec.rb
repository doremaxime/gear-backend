require 'rails_helper'

RSpec.describe "MyGears", type: :request do
  describe "GET /my_gears" do
    it "works! (now write some real specs)" do
      get my_gears_path
      expect(response).to have_http_status(200)
    end
  end
end
