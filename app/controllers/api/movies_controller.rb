class Api::MoviesController < ApplicationController
    def index
        @movies = Movie.all
        render json: @movies, status: :ok
    end

    def history
        @user = User.find params[:id]
        @movies = @user.movies

        render json: @movies, status: :ok
    end

    def preferences
    end
end