class GenresController < ApplicationController
    before_action :find_genre, only: [:show, :update, :edit, :destroy]

    def index
        @genres = Genre.all
    end

    def show
        # @genre = Genre.find(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)
        if @genre.valid?
            redirect_to @genre
        else 
            flash[:errors] = @genre.errors.full_messages
            redirect_to new_genre_path
        end
    end

    def edit
        #before_action
    end

    def update
        @genre.update(genre_params)
        redirect_to @genre
    end

    def destroy
        @genre.destroy
        redirect_to genres_path
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def find_genre
        @genre = Genre.find(params[:id])
    end
end
