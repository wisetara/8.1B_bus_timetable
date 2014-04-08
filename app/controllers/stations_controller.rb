class StationsController < ApplicationController

  def index
    # @station = Station.new(params[:station])
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new(params[:station])

    if @station.save
      flash[:notice] = "Station created."
      redirect_to('/stations')
    else
      render 'new'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(params[:station])
      redirect_to('/stations')
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    flash[:notice] = "Station deleted."
  end
end

