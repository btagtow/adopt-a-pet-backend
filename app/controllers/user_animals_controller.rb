class UserAnimalsController < ApplicationController
    def index
        @useranimals = UserAnimal.all 
        render json: @useranimals
    end

    def create
        @useranimal = UserAnimal.create(
            user_id: params[:user_id],
            animal_id: params[:animal_id]
        )
        redirect_to "http://localhost:3001/user.html?id=#{params[:user_id]}"
    end

end
