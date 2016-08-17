class BookingsController < ApplicationController
before_action :authenticate_user!, except: [:index]



  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = current_user.bookings.build
    @barbers = Barber.all.map do |barber|
      [barber.name, barber.id]
   end
  end


  def create
    @booking = current_user.bookings.build(booking_params)
    if @booking.save
      redirect_to user_path(current_user)
    else
      @errors = @booking.errors.full_messages
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to user_path(current_user)
    else
      @errors = @booking.errors.full_messages
      render :edit
    end
  end


  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
      redirect_to user_path(current_user)
  end


private

  def booking_params
    params.require(:booking).permit(:user_id, :barber_id, :date_time, :cancelled)
  end

end
