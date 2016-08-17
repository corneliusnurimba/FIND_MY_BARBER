class AddDatetimeToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :date, :datetime
  end
end
