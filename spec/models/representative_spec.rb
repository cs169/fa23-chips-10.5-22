require 'rails_helper'

describe Representative do
  describe 'should not add duplicate representatives' do
    rep_info = Hash.new
    rep_info[:officials] = {name: "Person"}
    rep_info[:offices] = [{name: "title", division_id: "ocdid", official_indices: [0]}]
    represntative_one = Representative.create!({ name: "Person", ocdid: "ocdid",
          title: "title"})
    Representative.civic_api_to_representative_params(rep_info)
    expect(Representative.count).to eq(1)
  end
end