class UserAnimalsController < ApplicationController
    def index
        @useranimals = UserAnimal.all 
        render json: @useranimals
    end
end
