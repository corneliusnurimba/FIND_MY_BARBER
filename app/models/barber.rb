class Barber < ApplicationRecord

  mount_uploader :photo, PhotoUploader
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search(search)
    near(search, 20)
  end

  def photo_url
    return photo.url(:standard) if photo.present?
    'FMB_placeholder'
  end

end
