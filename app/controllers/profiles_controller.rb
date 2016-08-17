class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @bookings = Booking.all
  end

private
  def user_params
    params.require(:user).permit(:photo, :photo_cache)
  end
end
