class AlbumsController < ApplicationController

  def index 
    @album = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create(album_params)
    if @album.valid?
      redirect_to root_path
    else
      render :new, :status  => :unprocessable_entity
    end
  end

  private

  def album_params
    params.require(:album).permit(:name, :description, :artist)
  end

end
