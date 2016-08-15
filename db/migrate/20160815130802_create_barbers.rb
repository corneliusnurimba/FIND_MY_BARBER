class CreateBarbers < ActiveRecord::Migration[5.0]
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :city
      t.integer :phone_number

      t.timestamps
    end
  end
end
