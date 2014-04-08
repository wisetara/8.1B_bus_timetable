class StopsController < ApplicationController

  def index
    @stop = Stop.new(params[:stop])
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(params[:stop])

    if @stop.save
      flash[:notice] = "Stop created."
      redirect_to('/stops')
    else
      render 'new'
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    if @stop.update(params[:stop])
      redirect_to('/stops')
    else
      render 'edit'
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
    flash[:notice] = "Stop deleted."
  end
end

