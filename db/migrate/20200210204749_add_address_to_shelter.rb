class AddAddressToShelter < ActiveRecord::Migration[6.0]
  def change
    add_column :shelters, :address, :string
  end
end
