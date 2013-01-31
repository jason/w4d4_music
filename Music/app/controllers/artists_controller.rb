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
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes(:band_id => params[:band_id], :name => params[:name])
    flash.notice = "you win!"
    redirect_to "/artists/"
  end

  def create
    @artist = Artist.new
    @artist.band_id = params[:band_id]
    @artist.name = params[:name]
    @artist.save

    redirect_to "/artists/"
  end

end