class BandsController < ApplicationController
  def show
    @band = Band.find(params[:id])
  end

  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new
    @band.name = params[:name]
    @band.save

    flash.notice = "Booyah! Band saved!"
    redirect_to bands_path
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update_attributes(name: params[:name])

    flash.notice = "Booyah! Band updated again."
    redirect_to bands_path
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    flash.notice = "Booyah! Band destroyed in half."
    redirect_to bands_path
  end
end
