class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash.notice = "you killed #{@artist.name}!  You bastard!"

    redirect_to "/artists/"
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes(params[:artist])
    flash.notice = "you win!"
    redirect_to artists_path
  end

  def create
    @artist = Artist.new(params[:artist])
    @artist.save

    redirect_to artists_path
  end

end