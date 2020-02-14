class UsersController < ApplicationController

    def index 
        @users = User.all 
        render json: @users
    end

    def show 
        @user = User.find(params[:id])
        render json: @user, include: {:animals => {
            :include => [:shelter]
            }
        }
    end

    def create
        @user = User.create(
            name: params[:name],
            email: params[:email]
        )
    end

    def destroy
    end

end
