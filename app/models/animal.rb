class Animal < ApplicationRecord
    belongs_to :shelter
    has_many :user_animals, dependent: :destroy
    has_many :users, through: :user_animals 
end
