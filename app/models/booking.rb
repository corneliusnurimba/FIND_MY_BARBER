class Booking < ApplicationRecord
  validates :barber, presence: true
  validates :user, presence: true
  # validates_uniqueness_of :barber, scope: :user

  belongs_to :user
  belongs_to :barber

end





