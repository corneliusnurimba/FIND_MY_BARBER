class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @bookings = Booking.all
  end



  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_params)
    if @user.save
      redirect_to profile_path(current_user)
    else
      @errors = @user.errors.full_messages
      render :edit
    end
  end



private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :photo, :photo_cache)
  end
end
