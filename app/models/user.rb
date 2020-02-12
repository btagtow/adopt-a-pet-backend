class User < ApplicationRecord
    has_many :user_animals
    has_many :animals, through: :user_animals 
end
