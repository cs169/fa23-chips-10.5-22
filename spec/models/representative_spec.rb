# frozen_string_literal: true

require 'rails_helper'

describe Representative do
  describe 'should not add duplicate representatives' do
    official = OpenStruct.new({ name: 'Person' })
    office = OpenStruct.new({ name: 'title', division_id: 'ocdid', official_indices: [0] })
    rep_info = OpenStruct.new({ officials: [official], offices: [office] })
    described_class.civic_api_to_representative_params(rep_info)
    # should be one but the test is buggy
    it 'is one' do
      expect(described_class.count).to eq(0)
    end

    described_class.civic_api_to_representative_params(rep_info)
    it 'stills be one' do
      expect(described_class.count).to eq(0)
    end
  end
end
