class ArtistsController < ApplicationController
  before_action :art_find, only:[:show, :edit, :update]
  
    def show
    # byebug
    end
    
    def new
    @artist = Artist.new
    end

    def create
    @artist = Artist.create(art_parm)
    redirect_to artist_path(@artist)
    end

    def edit
    end

    def update
    @artist.update(art_parm)
    redirect_to artist_path(@artist)
    end

    private

    def art_find
        @artist = Artist.find(params[:id])
    end

    def art_parm
        params.require(:artist).permit(:name, :bio)
    end
end
