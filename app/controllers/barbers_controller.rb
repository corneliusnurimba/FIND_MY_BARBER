class BarbersController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]

  def index
    @barbers = Barber.all
    @barbers = Barber.where.not(latitude: nil, longitude: nil)
    if params[:city]
      @barbers = Barber.search(params[:city]).order("created_at DESC")
    else
      @barbers = Barber.all.order('created_at DESC')
    end
    @hash = Gmaps4rails.build_markers(@barbers) do |barber, marker|
      marker.lat barber.latitude
      marker.lng barber.longitude
      # marker.infowindow render_to_string(partial: "/barbers/map_box", locals: { barber: barber })
    end

  end

  def show
    @barber = Barber.find(params[:id])
    @booking = @barber.bookings.build
    @alert_message = "You are viewing #{@barber.name}"
    @barber_coordinates = { lat: @barber.latitude, lng: @barber.longitude }
  end

  def new
    @barber = Barber.new
  end

  def create
    @barber = Barber.new(barber_params)
    if @barber.save
      redirect_to barber_path(@barber)
    else
      @errors = @barber.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @barber = Barber.find(params[:id])
    @barber.destroy
    redirect_to barbers_path
  end

  private

  def barber_params
    params.require(:barber).permit(:name, :address, :email, :city, :phone_number, :photo, :photo_cache)
  end

end
