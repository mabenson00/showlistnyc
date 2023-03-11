class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
    @venues = Venue.all
    @bands = Band.all
  end

  def create
    @show = Show.new(show_params)

    # Handle new venue creation
    if params[:show][:new_venue].present?
      @venue = Venue.new(name: params[:show][:new_venue], city: params[:venue][:city])
      if @venue.save
        @show.venue_id = @venue.id
      else
        flash[:alert] = "Error creating venue."
        render :new
        return
      end
    end

    # Handle new bands creation
    if params[:show][:new_band_names].present?
      band_names = params[:show][:new_band_names].split(",")
      band_names.each do |band_name|
        @band = Band.new(name: band_name.strip)
        if @band.save
          @show.bands << @band
        else
          flash[:alert] = "Error creating band."
          render :new
          return
        end
      end
    end

    if @show.save
      flash[:notice] = "Show created successfully."
      redirect_to shows_path
    else
      flash[:alert] = "Error creating show."
      render :new
    end
  end

  private

  def show_params
    params.require(:show).permit(:date, :extra_info, :recommended, band_ids: [])
  end
end
