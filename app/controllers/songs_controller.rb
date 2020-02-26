class SongsController < ApplicationController
    before_action :find_song, only: [:show, :edit, :update, :destroy]

    def index
        @songs = Song.all
    end

    def show
        #before_action
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params)
        if @song.valid?
            redirect_to @song
        else
            flash[:errors] = @song.errors.full_messages
            redirect_to new_song_path
        end
    end

    def edit
        #before_action
    end

    def update
        @song.update(song_params)
        redirect_to @song
    end

    def destroy
        @song.destroy
        redirect_to songs_path
    end 

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def find_song
        @song = Song.find(params[:id])
    end
end
