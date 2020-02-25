class GenresController < ApplicationController
    before_action :gen_find, only: [:show, :edit, :update]
    
    def show
    
    end
    
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(gen_param)
        redirect_to @genre
    end

    def edit
    
    end

    def update
        @genre.update(gen_param)
        redirect_to @genre
    end

    private

    def gen_find
        @genre = Genre.find(params[:id])
    end

    def gen_param
        params.require(:genre).permit(:name)
    end
end
