# frozen_string_literal: true

class AddPhotoLinkToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :photo_link, :string
  end
end
