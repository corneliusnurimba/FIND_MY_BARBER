class AddPhotoToBarber < ActiveRecord::Migration[5.0]
  def change
    add_column :barbers, :photo, :string
  end
end
