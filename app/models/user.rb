class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings

  # after_create :send_welcome_email

  def full_name
    first_name + ' ' + last_name
  end

  mount_uploader :photo, PhotoUploader

  def photo_url
    return photo.url(:thumbnail) if photo.present?
    'FMB_profile_placeholder.jpg'
  end

  private

  # def send_welcome_email
  #   UserMailer.welcome(self).deliver_now
  # end

end
