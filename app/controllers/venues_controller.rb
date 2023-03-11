class VenuesController < ApplicationController
  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      redirect_to @venue
    else
      render :new
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :description, :image)
  end
end
