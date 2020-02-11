class SheltersController < ApplicationController

    def index 
        @shelters = Shelter.all 
        render json: @shelters
    end

    def show
        @shelter = Shelter.find(params[:id])
        render json: @shelter
    end

    def create
        @shelter = Shelter.create(
            name: params[:name],
            city: params[:city]
        )
        render json: @shelter
    end

end
