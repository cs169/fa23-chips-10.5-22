# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CampaignFinance, type: :model do
  it 'does not error when the response cannot be parsed' do
    expect(described_class.parse_propublica_results('error parsing')).to be_nil
  end

  it 'works as intended when the response is parseable' do
    example_data = '{"color": "red","value": "#f00"}'
    expect(described_class.parse_propublica_results(example_data)).not_to be_nil
  end
end
