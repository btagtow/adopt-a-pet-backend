class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :kind
      t.string :breed
      t.references :shelter, null: false, foreign_key: true
      t.string :temperament
      t.string :picture
      t.string :status

      t.timestamps
    end
  end
end
