class Barber < ApplicationRecord
    mount_uploader :photo, PhotoUploader

  def self.search(search)
    where("LOWER(city) LIKE LOWER(?)", search)
  end
end
