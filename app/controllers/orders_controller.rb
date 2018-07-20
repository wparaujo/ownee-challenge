class OrdersController < ApplicationController
    before_filter :authorize

    def index
    end

    def new
    end

    def create
    end

    private
    
    def movie_params
        params.require(:movie).permit(:name, :price, genre_attributes: [:id, :name])
    end
end
