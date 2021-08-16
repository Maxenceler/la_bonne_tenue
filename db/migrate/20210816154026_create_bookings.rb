class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :users, null: false, foreign_key: true
      t.references :items, null: false, foreign_key: true
      t.date :beginning_date
      t.date :ending_date

      t.timestamps
    end
  end
end
