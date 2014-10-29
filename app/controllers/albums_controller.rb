class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
     @album = Album.new
  end

  def create
    @album = Album.new(find_params)
    if @album.save
      redirect_to albums_show_path(@album)
    else
      render 'new'
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(find_params)
      redirect_to @album
    else
      render 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to album_path
  end

  private

  def find_params
    params.require(:album).permit(:name, :artist, :description)
  end

end
