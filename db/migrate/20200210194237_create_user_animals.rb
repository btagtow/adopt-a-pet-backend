class CreateUserAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_animals do |t|
      t.reference :user
      t.reference :animal

      t.timestamps
    end
  end
end
