class UsersController < ApplicationController

    def index
        @users = User.all

        render json: @users, status: :ok
    end


    def create
        @user = User.new(user_params)

        render json: @user, status: :created
    end

    def destroy
        @user = User.where(id: params[:id]).first
        if @contact.destroy
            head(:ok)
        else
            head(:unproccessable_entity)
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
