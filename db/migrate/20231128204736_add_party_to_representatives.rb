class AddPartyToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :party, :string
  end
end
