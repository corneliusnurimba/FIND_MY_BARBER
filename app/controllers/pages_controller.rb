class PagesController < ApplicationController

  def home
    @barbers = Barber.all
    if params[:search]
      @barbers = Barber.search(params[:search]).order("created_at DESC")
    else
      @barbers = Barber.all.order('created_at DESC')
    end
  end

end
