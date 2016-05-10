class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :phone
      t.string :note
      t.string :date
      t.string :status
      t.string :slot

      t.timestamps null: false
    end
  end
end
