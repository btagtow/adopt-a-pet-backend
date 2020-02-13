class CreateShelters < ActiveRecord::Migration[6.0]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :city
      t.string :address
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
