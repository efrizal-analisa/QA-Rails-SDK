class UsersController < ApplicationController
    def new
    end

    def index
        render json: User.all
    end

    def create
    end
end
