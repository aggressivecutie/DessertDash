require 'rails_helper'

RSpec.describe "Desserts", type: :request do
  describe "GET /desserts" do
    it "works! (now write some real specs)" do
      get desserts_path
      expect(response).to have_http_status(200)
    end
  end
end
