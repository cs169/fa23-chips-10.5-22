# frozen_string_literal: true

class Representative < ApplicationRecord
  has_many :news_items, dependent: :delete_all

  def self.civic_api_to_representative_params(rep_info)
    reps = []

    rep_info.officials.each_with_index do |official, index|
      ocdid_temp = ''
      title_temp = ''
      street_t = ''
      state_t = ''
      zip_t = ''
      city_t = ''

      rep_info.offices.each do |office|
        if office.official_indices.include? index
          title_temp = office.name
          ocdid_temp = office.division_id
        end
      end

      begin
        street_t = official.address[0].line1
        city_t = official.address[0].city
        zip_t = official.address[0].zip
        state_t = official.address[0].state
      rescue
        street_t = 'Not found'
        state_t = 'Not found'
        zip_t = 'Not found'
        city_t = 'Not found'
      end

      url = official.photo_url

      rep = Representative.find_or_create_by({ name: official.name, ocdid: ocdid_temp,
          title: title_temp, photo_link: url, party: official.party,
          street: street_t, city: city_t, state: state_t, zip: zip_t })
      reps.push(rep)
    end
    reps
  end
end
