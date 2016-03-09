class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    render "songs/new"
  end

  def create
    raise params[]
    @song = Song.new song_params

    if @song.save
      redirect_to songs_path
    else
      render "songs/new"
    end
  end

  private

  def song_params
    params.require(:song).permit(:title)
  end
end
