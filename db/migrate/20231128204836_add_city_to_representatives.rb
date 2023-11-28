class AddCityToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :city, :string
  end
end
