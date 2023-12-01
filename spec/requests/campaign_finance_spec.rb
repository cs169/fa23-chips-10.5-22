require 'rails_helper'

RSpec.describe "CampaignFinances", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/campaign_finance/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /search" do
    it "returns http success" do
      get "/campaign_finance/search"
      expect(response).to have_http_status(:success)
    end
  end

end
