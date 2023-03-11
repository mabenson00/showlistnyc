module Api
  class VenuesController < ApplicationController
    def index
      venues = Venue.all
      render json: { venues: venues }
    end

    def show
      venue = Venue.find(params[:id])
      render json: { venue: venue }
    end

    def create
      venue = Venue.new(venue_params)
      venue.save!
      render json: { venue: venue }, status: :created
    end

    def update
      venue = Venue.find(params[:id])
      venue.update!(venue_params)
      render json: { venue: venue }
    end

    def destroy
      venue = Venue.find(params[:id])
      venue.destroy
      head :no_content
    end

    private

    def venue_params
      params.require(:venue).permit(:name, :address, :city, :state, :zip_code, :phone, :email, :description, :image_url)
    end
  end
end
