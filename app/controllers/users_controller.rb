class UsersController < ApplicationController
    def index
        users = User.all

        render json: users, status: :ok, include: [:days]
    end

    def create
        user = User.create!(params.require(:user).permit(:username, :password))

        render json: user, status: :created
    end

    def destroy
        user = User.where(id: params[:id]).first
        if user.destroy
            head(:ok)
        else
            head(:unproccessable_entity)
        end
    end

end
