class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  def new
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def create
  end
end
