class DaysController < ApplicationController

    def index
        days = Day.all

        render json: days, status: :ok
    end


    def create
        day= Day.create!(params.require(:day).permit(:user_id, :date, :content))

        render json: day, status: :created
    end

    def destroy
        day= Day.where(id: params[:id]).first
        if day.destroy
            head(:ok)
        else
            head(:unproccessable_entity)
        end
    end

end
