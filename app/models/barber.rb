class Barber < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def self.search(search)
    near(search, 20)
  end
end
