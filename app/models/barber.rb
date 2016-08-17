class Barber < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search(search)
    where("LOWER(city) LIKE LOWER(?)", search)
  end
end
