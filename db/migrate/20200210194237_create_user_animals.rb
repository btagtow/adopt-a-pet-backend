class CreateUserAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_animals do |t|
      t.references :user, null: false, foreign_key: true
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
