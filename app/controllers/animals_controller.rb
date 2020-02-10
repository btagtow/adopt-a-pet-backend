class AnimalsController < ApplicationController

    def index 
        @animals = Animal.all 
        render json: @animals, include: [:shelter]
    end

    def show 
        @animal = Animal.find(params[:id])
        render json: @animal, include: [:shelter]
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

    def destroy
    end

end
