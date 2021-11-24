class DaysController < ApplicationController
    belongs_to :users

    def create
        day = User.days.create()
    end
end
