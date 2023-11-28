# frozen_string_literal: true

class AddStreetToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :street, :string
  end
end
