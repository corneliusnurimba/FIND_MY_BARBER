class BarbersController < ApplicationController

  def index
    @barbers = Barber.all
    if params[:city]
      @barbers = Barber.search(params[:city]).order("created_at DESC")
    else
      @barbers = Barber.all.order('created_at DESC')
    end
  end

  def show
    @barber = Barber.find(params[:id])
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
