# frozen_string_literal: true

class NewsItem < ApplicationRecord
  belongs_to :representative
  has_many :ratings, dependent: :delete_all

  enum issues: {
    'Free Speech':                  0,
    Immigration:                    1,
    Terrorism:                      2,
    'Social Security and Medicare': 3,
    Abortion:                       4,
    'Student Loans':                5,
    'Gun Control':                  6,
    Unemployment:                   7,
    'Climate Change':               8,
    Homelessness:                   9,
    Racism:                         10,
    'Tax Reform':                   11,
    'Net Neutrality':               12,
    'Religious Freedom':            13,
    'Border Security':              14,
    'Minimum Wage':                 15,
    'Equal Pay':                    16
  }

  def self.find_for(representative_id)
    NewsItem.find_by(
      representative_id: representative_id
    )
  end
end
