# frozen_string_literal: true

class Representative < ApplicationRecord
  has_many :news_items, dependent: :delete_all

  def self.civic_api_to_representative_params(rep_info)
    reps = []

    rep_info.officials.each_with_index do |official, index|
      rep = find_or_create_official(rep_info, official, index)
      reps.push(rep)
    end
    reps
  end

  def self.find_or_create_official(rep_info, official, index)
    street_t = 'Not found'
    state_t = 'Not found'
    zip_t = 'Not found'
    city_t = 'Not found'

    title_temp, ocdid_temp = get_office_info(rep_info, index)

    unless official.address.nil?
      street_t = official.address[0].line1
      city_t = official.address[0].city
      zip_t = official.address[0].zip
      state_t = official.address[0].state
    end

    Representative.find_or_create_by({ name: official.name, ocdid: ocdid_temp,
        title: title_temp, photo_link: official.photo_url, party: official.party,
        street: street_t, city: city_t, state: state_t, zip: zip_t })
  end

  def self.get_office_info(rep_info, index)
    rep_info.offices.each do |office|
      next unless office.official_indices.include? index

      title_temp = office.name
      ocdid_temp = office.division_id
      return title_temp, ocdid_temp
    end
  end
end
