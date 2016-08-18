class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.booking_creation.subject
  #
  def booking_creation(booking, user)
    @user = user
    @booking = booking
    mail(to: user.email, subject: 'Your booking has been created')
  end
end
