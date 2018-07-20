class MoviesController < ApplicationController
    before_action :authorize, only: [:new, :create]

    def index
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)

        if @current_user.role == 'admin'
            if @movie.save
                render :new
            else
                #
            end
        else
            #
        end
        
    end

    def search
        @movies = Movie.where('lower(name) LIKE ?', "%#{params[:name].downcase}%")
        render action: :results
    end

    def results
    end

    private 
    def movie_params
        params.require(:movie).permit(:name, :price, genre_attributes: [:id, :name])
    end
end
