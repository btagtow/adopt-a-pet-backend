class Animal < ApplicationRecord
    belongs_to :shelter
    has_many :user_animals
    has_many :users, through: :user_animals 
end
