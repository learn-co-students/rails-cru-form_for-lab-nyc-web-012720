class SongsController < ApplicationController
    before_action :song_find, only:[:show,:edit,:update]
    
    def index
    @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def show
    @artist = Artist.find(@song.artist_id)
    @genre = Genre.find(@song.genre_id)
    # byebug
    end

    def create
        # byebug
        @song = Song.create(song_param)
        redirect_to @song
    end


    def edit
        
    end

    def update
        @song.update(song_param)
        redirect_to @song
    end

    private

    def song_find
        @song = Song.find(params[:id])
    end
    

    def song_param
        params.require(:song).permit(:name, :artist_id , :genre_id )
    end
end
