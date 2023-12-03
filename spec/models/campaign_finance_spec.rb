# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CampaignFinance, type: :model do
  it 'does not error when the response cannot be parsed' do
    described_class.parse_propublica_results('error parsing')
    expect(described_class.campaign_finance_search_results).to be_nil
  end
end
