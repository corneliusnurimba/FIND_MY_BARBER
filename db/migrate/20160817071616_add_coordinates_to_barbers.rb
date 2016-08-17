class AddCoordinatesToBarbers < ActiveRecord::Migration[5.0]
  def change
    add_column :barbers, :latitude, :float
    add_column :barbers, :longitude, :float
  end
end
