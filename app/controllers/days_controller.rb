class DaysController < ApplicationController

    def create
        day = User.days.create()
    end
end
