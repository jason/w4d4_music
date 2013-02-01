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
    band = Band.new(params[:band])
    band.picture = params[:band].delete(:picture).read
    band.save

    flash.notice = "Booyah! Band saved!"
    redirect_to bands_path
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update_attributes(params[:band])

    flash.notice = "Booyah! Band updated again."
    redirect_to bands_path
  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy

    flash.notice = "Booyah! Band destroyed in half."
    redirect_to bands_path
  end

  def photo
    band = Band.find(params[:id])
    send_data band.picture, :type => 'image/jpg', :disposition => 'inline'
  end

end
