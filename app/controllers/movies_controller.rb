class MoviesController < ApplicationController
    
    def index
    end

    def search
        @movies = Movie.where('name = ?', params[:name])
        render action: :results
    end

    def results
    end
end
