class RemoveCityFromBarbers < ActiveRecord::Migration[5.0]
  def change
    remove_column :barbers, :city
  end
end
