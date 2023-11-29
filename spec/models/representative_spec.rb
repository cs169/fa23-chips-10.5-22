# frozen_string_literal: true

require 'rails_helper'

describe Representative do
  before do
    @place = OpenStruct.new({ city: 'Berkeley', line1: '5 1st Street', state: 'CA', zip: '99999' })
    @official = OpenStruct.new({ name: 'Person', address: [@place] })
    @office = OpenStruct.new({ name: 'title', division_id: 'ocdid', official_indices: [0] })
    @rep_info = OpenStruct.new({ officials: [@official], offices: [@office] })
  end

  it 'does not add duplicate representatives' do
    described_class.civic_api_to_representative_params(@rep_info)
    expect(described_class.count).to eq(1)
    described_class.civic_api_to_representative_params(@rep_info)
    expect(described_class.count).to eq(1)
  end

  it 'works if the address is valid' do
    rep = described_class.civic_api_to_representative_params(@rep_info)[0]
    expect(rep.attributes['city']).to eq('Berkeley')
    expect(rep.attributes['street']).to eq('5 1st Street')
    expect(rep.attributes['state']).to eq('CA')
    expect(rep.attributes['zip']).to eq('99999')
  end
end
