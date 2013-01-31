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
  end

  def update
  end

  def create
    @artist = Artist.new
    @artist.band_id = params[:band_id]
    @artist.name = params[:name]
    @artist.save

    render "index"
  end

end