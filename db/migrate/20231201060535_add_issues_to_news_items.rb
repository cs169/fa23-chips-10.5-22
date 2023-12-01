# frozen_string_literal: true

class AddIssuesToNewsItems < ActiveRecord::Migration[5.2]
  def change
    add_column :news_items, :issues, :integer
  end
end
