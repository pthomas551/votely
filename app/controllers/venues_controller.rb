class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if current_user && @venue.save
      redirect_to @venue
    else
      render 'new'
    end
  end

  def update
    @venue = Venue.find(params[:id])
    if current_user == @venue.user && @venue.update(venue_params)
      redirect_to @venue
    else
      render 'edit'
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy if @venue.user == current_user
    redirect_to venues_path
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :description, :date, :time)
  end

end
