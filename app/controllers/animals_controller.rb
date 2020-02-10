class AnimalsController < ApplicationController

    def index 
        @animals = Animal.all 
        render json: @animals
    end

    def show 
        @animal = Animal.find(params[:id])
        render json: @animal
    end

    def create
        @animal = Animal.create(
            name: params[:name],
            age: params[:age],
            gender: params[:gender],
            kind: params[:kind],
            breed: params[:breed],
            shelter_id: params[:shelter_id],
            temperament: params[:temperament]
        )
        render json: @animal
    end

    # t.string :name
    # t.integer :age
    # t.string :gender
    # t.string :kind
    # t.string :breed
    # t.references :shelter, null: false, foreign_key: true
    # t.string :temperament

    def destroy
    end

end
