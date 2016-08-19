class ChangePhoneFromIntegerToString < ActiveRecord::Migration[5.0]
  def change
    remove_column :barbers, :phone_number, :integer
    add_column :barbers, :phone_number, :string
  end
end
