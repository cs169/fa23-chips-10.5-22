# frozen_string_literal: true

class CampaignFinance < ApplicationRecord
  def self.get_propublica_results(cycle, category)
    api_key = Rails.application.credentials[:PROPUBLICA_API_KEY]
    url = "https://api.propublica.org/campaign-finance/v1/#{cycle}/candidates/leaders/#{category}.json"
    connection = Faraday::Connection.new url
    reply = connection.get do |req|
      req.headers['X-API-Key'] = api_key
    end
    parse_propublica_results(reply.body)
  end

  def self.parse_propublica_results(replybody)
    JSON.parse(replybody)

    # @campaign_finance_search_results = response
  rescue JSON::ParserError
    # @campaign_finance_search_results = nil
    nil
  end
end
