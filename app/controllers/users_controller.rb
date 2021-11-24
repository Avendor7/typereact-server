class UsersController < ApplicationController
    has_many :days, dependent: :destroy
    def index
        users = User.all

        render json: users, status: :ok
    end


    def create
        user = User.create(params.require(:user).permit(:username, :password))

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
