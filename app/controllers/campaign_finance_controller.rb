# frozen_string_literal: true

class CampaignFinanceController < ApplicationController
  def index
    @cycles_list = %w[2010 2012 2014 2016 2018 2020]
    @categories_list = %w[candidate-loan contribution-total debts-owed disbursements-total end-cash
                          individual-total pac-total receipts-total refund-total]
  end

  def search
    api_key = Rails.application.credentials[:PROPUBLICA_API_KEY]
    cycle = params[:search_terms][:cycle]
    category = params[:search_terms][:category]
    url = "https://api.propublica.org/campaign-finance/v1/#{cycle}/candidates/leaders/#{category}.json"
    connection = Faraday::Connection.new url
    reply = connection.get do |req|
      req.headers['X-API-Key'] = api_key
    end
    response = JSON.parse(reply.body)
    Rails.logger.debug response
    # TODO: Add results to an instance variable and render them on the search.html.haml page.
  end
end
