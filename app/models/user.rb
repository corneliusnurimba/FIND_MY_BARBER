class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings


  def full_name
    first_name + ' ' + last_name
  end

  mount_uploader :photo, PhotoUploader

end
