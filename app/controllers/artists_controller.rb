class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show, :edit, :update, :destroy]

    def index
        @artists = Artist.all
        #render :index
    end

    def show
        # before_action:find_artist
    end

    def new
        @artist = Artist.new
        #render :new
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to @artist
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    def edit
        #before_action:find_artist
    end

    def update
        @artist.update(artist_params)
        redirect_to @artist
    end

    def destroy
        @artist.destroy
        redirect_to artists_path
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end
end
