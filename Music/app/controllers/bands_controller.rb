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

  def edit
  end
end
