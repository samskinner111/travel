class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]

  def index
    if params[:country] == nil
      @destinations = Destination.all
    else
      @destinations = Destination.where(country: params[:country].titleize)
    end
    @my_countries = Destination.select(:country).order(:country).distinct
  end

  def show
  end

  def new
    @destination = Destination.new
  end

  def edit
  end

  def create
    @destination = Destination.new(destination_params)

    respond_to do |format|
      if @destination.save
        format.html { redirect_to @destination, notice: 'The magic of creation!' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: "Destination just got better; I'm sure." }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_url, notice: 'Poof!  Gone just like that!' }
    end
  end

  private
    def set_destination
      @destination = Destination.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def destination_params
      params.require(:destination).permit(:city, :country, :population, :description, :avatar)
    end
end
