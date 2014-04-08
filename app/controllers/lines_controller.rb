class LinesController < ApplicationController

  def index
    @line = Line.new(params[:line])
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(params[:line])

    if @line.save
      flash[:notice] = "Line created."
      redirect_to('/lines')
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(params[:line])
      redirect_to('/lines')
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.destroy
    flash[:notice] = "Line deleted."
  end
end

