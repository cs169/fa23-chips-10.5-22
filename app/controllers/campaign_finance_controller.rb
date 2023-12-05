# frozen_string_literal: true

class CampaignFinanceController < ApplicationController
  def index
    @cycles_list = %w[2010 2012 2014 2016 2018 2020]
    @categories_list = %w[candidate-loan contribution-total debts-owed disbursements-total end-cash individual-total
                          pac-total receipts-total refund-total]
  end

  def search
    @cycle = params[:search_terms][:cycle]
    @category = params[:search_terms][:category]
    @campaign_finance_search_results = CampaignFinance.get_propublica_results(@cycle, @category)
    redirect_to campaign_finance_path if @campaign_finance_search_results.nil?
    rep = []
    @campaign_finance_search_results['results'].each do |r|
      rep.push(r)
    end
    @campaign_finance_search_results = rep
  end
end
