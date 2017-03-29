require 'rails_helper'

RSpec.describe "Porjects", type: :request do
  describe "GET /porjects" do
    it "works! (now write some real specs)" do
      get porjects_path
      expect(response).to have_http_status(200)
    end
  end
end
